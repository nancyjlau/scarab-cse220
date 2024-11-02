import os
import json
import argparse
import pandas as pd
import matplotlib
import matplotlib.pyplot as plt
import numpy as np
import csv
from matplotlib import cm

matplotlib.rc('font', size=14)

def read_descriptor_from_json(descriptor_filename):
    # Read the descriptor data from a JSON file
    try:
        with open(descriptor_filename, 'r') as json_file:
            descriptor_data = json.load(json_file)
        return descriptor_data
    except FileNotFoundError:
        print(f"Error: File '{descriptor_filename}' not found.")
        return None
    except json.JSONDecodeError as e:
        print(f"Error decoding JSON in file '{descriptor_filename}': {e}")
        return None

def read_stat_file_from_json(stat_filename): 
  try: 
    with open(stat_filename, 'r') as json_file: 
      stats = json.load(json_file)
    return stats 
  except FileNotFoundError:
    print(f"Error: File '{descriptor_filename}' not found.")
    return None
  except json.JSONDecodeError as e:
    print(f"Error decoding JSON in file '{descriptor_filename}': {e}")
    return None 

def get_stats(descriptor_data, sim_path, output_dir, stats, files, types):
  benchmarks_org = descriptor_data["workloads_list"].copy()
  all_stats = []
  dirs = [] 
  labels = []
  

  try:
    for index in range(len(stats)):
      benchmarks = []
      stat_dict = {}

      stat = stats[index]
      file = files[index]
      stat_type = types[index]
      for config_key in descriptor_data["configurations"].keys():
        run_stats = []
        avg_run_stats = 0.0
        cnt_benchmarks = 0
        for benchmark in benchmarks_org:
          benchmark_name = benchmark.split("/")
          exp_path = sim_path+'/'+benchmark+'/'+descriptor_data["experiment"]+'/'
          run_stat = 0
          with open(exp_path+config_key+file) as f:
            lines = f.readlines()
            for line in lines:
              if stat in line:
                tokens = [x.strip() for x in line.split(',')]
                run_stat = float(tokens[1])
                if stat_type == "ratio":
                  run_stat = run_stat / 100
                break

          avg_run_stats += run_stat

          cnt_benchmarks = cnt_benchmarks + 1
          if len(benchmarks_org) > len(benchmarks):
            benchmarks.append(benchmark_name)

          run_stats.append(run_stat)

        num = len(benchmarks)
        #print(benchmarks)
        run_stats.append(avg_run_stats/num)
        stat_dict[config_key] = run_stats

      if stat_type == "ratio":
        temp = stat[0:len(stat)-3] 
        stat_name = temp + "ratio"
      else: 
        stat_name = stat 
      dirs.append(output_dir + '/' + stat_name + '.png')
      
      labels.append(stat_name)

      all_stats.append(stat_dict.copy())
    benchmarks.append('Avg')
    #print(benchmark)

    return benchmarks, all_stats, labels, dirs
    #plot_data(benchmarks, ipc, 'IPC', output_dir+'/FigureA.png')

  except Exception as e:
    print(f'sim_path: {sim_path}')
    print(e)



def plot_data(benchmarks, data, ylabel_name, fig_name, ylim=None):
  #print(data)
  colors = ['#800000', '#911eb4', '#4363d8', '#f58231', '#3cb44b', '#46f0f0', '#f032e6', '#bcf60c', '#fabebe', '#e6beff', '#e6194b', '#000075', '#800000', '#9a6324', '#808080', '#ffffff', '#000000']
  ind = np.arange(len(benchmarks))
  width = 0.12
  fig, ax = plt.subplots(figsize=(20, 8), dpi=80)
  num_keys = len(data.keys())

  idx = 0
  start_id = -int(num_keys/2)
  for key in data.keys():
    hatch=''
    if idx % 2:
      hatch='\\\\'
    else:
      hatch='///'
    ax.bar(ind + (start_id+idx)*width, data[key], width=width, fill=False, hatch=hatch, color=colors[idx], edgecolor=colors[idx], label=key)
    idx += 1
  ax.set_xlabel("Benchmarks")
  ax.set_ylabel(ylabel_name)
  ax.set_xticks(ind)
  ax.set_xticklabels(benchmarks, rotation = 27, ha='right')
  ax.grid('x')
  if ylim != None:
    ax.set_ylim(ylim)
  ax.legend(loc="upper right", ncols=2)
  fig.tight_layout()
  plt.savefig(fig_name, format="png", bbox_inches="tight")

# data: list of data dictionaries, containing stats by benchmark 
def plot_stack(benchmarks, data_list, ylabel_name, fig_name, stack_labels, ylim=None): 
  #print(data)
  colors = ['#800000', '#911eb4', '#4363d8', '#f58231', '#3cb44b', '#46f0f0', '#f032e6', '#bcf60c', '#fabebe', '#e6beff', '#e6194b', '#000075', '#800000', '#9a6324', '#808080', '#ffffff', '#000000']
  ind = np.arange(len(benchmarks))
  width = 0.12
  fig, ax = plt.subplots(figsize=(20, 8), dpi=80)
  num_keys = len(data_list[0].keys())

  idx = 0
  start_id = -int(num_keys/2)
  first = True 
  for key in data_list[0].keys():
    hatch=''
    if idx % 2:
      hatch='\\\\'
    else:
      hatch='///'
    
    y_prev = [0] * len(data_list[0][key]) 
    c = 0 
    for i in range(len(data_list)): 
      if first:
        ax.bar(ind + (start_id+idx)*width, [x + y for x, y in zip(y_prev, data_list[i][key])], bottom=y_prev, width=width, fill=False, hatch=hatch, color=colors[c], edgecolor=colors[c], label=stack_labels[i])
      else: 
        ax.bar(ind + (start_id+idx)*width, [x + y for x, y in zip(y_prev, data_list[i][key])], bottom=y_prev, width=width, fill=False, hatch=hatch, color=colors[c], edgecolor=colors[c])
      y_prev = [x + y for x, y in zip(y_prev, data_list[i][key])]
      c += 3
    idx += 1
    first = False
  ax.set_xlabel("Benchmarks")
  ax.set_ylabel(ylabel_name)
  ax.set_xticks(ind)
  ax.set_xticklabels(benchmarks, rotation = 27, ha='right')
  ax.grid('x')
  if ylim != None:
    ax.set_ylim(ylim)
  ax.legend(loc="upper right", ncols=1)
  fig.tight_layout()
  plt.savefig(fig_name, format="png", bbox_inches="tight")

def plot_stack_ratio(benchmarks, data_list, ylabel_name, fig_name, stack_labels, ratio_stat, ylim=None): 
  #print(data)
  colors = ['#800000', '#911eb4', '#4363d8', '#f58231', '#3cb44b', '#46f0f0', '#f032e6', '#bcf60c', '#fabebe', '#e6beff', '#e6194b', '#000075', '#800000', '#9a6324', '#808080', '#ffffff', '#000000']
  ind = np.arange(len(benchmarks))
  width = 0.12
  fig, ax = plt.subplots(figsize=(20, 8), dpi=80)
  num_keys = len(data_list[0].keys())

  idx = 0
  start_id = -int(num_keys/2)
  first = True 
  print(data_list[0].keys())
  for key in data_list[0].keys():
    hatch=''
    if idx % 2:
      hatch='\\\\'
    else:
      hatch='///'
    
    y_prev = [0] * len(data_list[0][key]) 
    c = 0 
    
    for i in range(len(data_list)): 
      templs = [] 
      for x, y in zip(ratio_stat[key], data_list[i][key]):
        #print(f'x: {x}')
        #print(f'y: {x}')
        if y == 0:
          templs.append(0)
        else: 
          templs.append(y/x)
      data_list[i][key] = templs
      if key == 'config_1':
        print(f'templs: {templs[1]}')
      
      if first:
        ax.bar(ind + (start_id+idx)*width, data_list[i][key], bottom=y_prev, width=width, fill=False, hatch=hatch, color=colors[c], edgecolor=colors[c], label=stack_labels[i][0:len(stack_labels[i])-6])
      else: 
        ax.bar(ind + (start_id+idx)*width, data_list[i][key], bottom=y_prev, width=width, fill=False, hatch=hatch, color=colors[c], edgecolor=colors[c])
      y_prev = [x + y for x, y in zip(y_prev, data_list[i][key])]
      if key == 'config_1':
        print(f'y_prev: {y_prev[1]}')
      
      c += 3
    idx += 1
    first = False
  ax.set_xlabel("Benchmarks")
  ax.set_ylabel(ylabel_name)
  ax.set_xticks(ind)
  ax.set_xticklabels(benchmarks, rotation = 27, ha='right')
  ax.grid('x')
  if ylim != None:
    ax.set_ylim(ylim)
  ax.legend(loc="upper right", ncols=1)
  fig.tight_layout()
  plt.savefig(fig_name, format="png", bbox_inches="tight")



if __name__ == "__main__":
    # Create a parser for command-line arguments
    parser = argparse.ArgumentParser(description='Read descriptor file name')
    parser.add_argument('-o','--output_dir', required=True, help='Output path. Usage: -o /home/$USER/plot')
    parser.add_argument('-d','--descriptor_name', required=True, help='Experiment descriptor name. Usage: -d /home/$USER/lab1.json')
    parser.add_argument('-s','--simulation_path', required=True, help='Simulation result path. Usage: -s /home/$USER/exp/simulations')
    parser.add_argument('-p','--stats_to_plot', required=False, help='Stats to plot path. Usage: -s /home/$USER/stats.json')



    args = parser.parse_args()
    descriptor_filename = args.descriptor_name

    descriptor_data = read_descriptor_from_json(descriptor_filename)
    stat_file = read_stat_file_from_json(args.stats_to_plot)
    stats = []
    filenames = [] 
    stack_stats = []
    stack_filenames = [] 
    types = []
    stack_types = [] 

    for item in stat_file["plotinfo"]["seperate"]: 
      stats.append(item["stat"])
      filenames.append(item["file"])
      types.append(item["type"])

    for item in stat_file["plotinfo"]["stacked"]["info"]: 
      stack_stats.append(item["stat"])
      stack_filenames.append(item["file"])
      stack_types.append("")

    benchmarks, stat_data, labels, names = get_stats(descriptor_data, args.simulation_path, args.output_dir, stats, filenames, types)

    for index in range(len(stat_data)): 
      plot_data(benchmarks, stat_data[index], labels[index], names[index])

    benchmarks, stat_data_stack, labels, names = get_stats(descriptor_data, args.simulation_path, args.output_dir, stack_stats, stack_filenames, stack_types)
    total_cache = {} 
    for key in stat_data[2]:
      temp_list = [] 
      for i in range(len(stat_data[2][key])): 
        temp_list.append(stat_data[2][key][i] + stat_data[3][key][i])
      
      total_cache[key] = temp_list
    
    plot_stack_ratio(benchmarks, stat_data_stack, stat_file["plotinfo"]["stacked"]["ylabel"], stat_file["plotinfo"]["stacked"]["name"], stack_labels=labels, ratio_stat=total_cache)

    #plot_stack(benchmarks, stat_data, stat_file["plotinfo"]["stacked"]["ylabel"], stat_file["plotinfo"]["stacked"]["name"], stack_labels=labels)


# command: python plot_specs.py -o C:\Users\elmig\OneDrive\Desktop\"Cse 220"\lab2_plots -d C:\Users\elmig\OneDrive\Desktop\"Cse 220"\lab2.json -s C:\Users\elmig\OneDrive\Desktop\"Cse 220"\exp\simulations -p C:\Users\elmig\OneDrive\Desktop\"Cse 220"\stats.json
