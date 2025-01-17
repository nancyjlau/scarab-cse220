#ifndef __PREF_BO_H__
#define __PREF_BO__


#include "memory/mem_req.h"


typedef uns8 (*HashFunction)(Addr); //make sure input type is correct for when we actually impliment this 


typedef struct RR_Table_Struct{ 
    Addr* hashmap; // may replace this with a hashmap... but it needs to have a FINITE size defined at startup. I'm not certain the hashlib implimentation works for finite sizes. 
    // actually im goofy af, the hash function will set the hashmap size lol 
    // hash function implimentation: For 256-entry RR table, XOR the 8 least significant line address bits with the next 8 bits to obtain table index. For 12-bit tags, skip the 8 least significant line address bits and extract the next 12 bits. 
    // we may want to hard bake the RR table to be size 256... since we would need to dynamically create new hashing functions for different sized RR tables otherwise. 
    HashFunction hash_function; //Hash function to be used for adding to hash table. 

} RR_Table;

typedef struct Score_Table_Entry_Struct{
    uns8 score; // may want more than 8bit here depending on what score max is... 
    Addr offset; // USE CORRECT DATATYPE HERE!!! THIS IS A PLACEHOLDER 
} Score_Table_Entry; 

typedef struct Score_Table_Struct{
    int highest_score_index; 
    int table_size;  
    Score_Table_Entry** table; 
} Score_Table; 

typedef struct BO_Pref_Struct{
    Score_Table* score_table; 
    RR_Table* rr_table;  
    Counter round_count; 
    Counter round_index;
    int round_max; 
    int score_max; 
    Addr best_offset; //still need to check the offset dtype ;( 
    HWP_Info* hwp_info; // CHECK THE TYPE ON THIS !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! 
    Flag on; 
} BO_Pref;  

typedef struct{
  BO_Pref* bo_pref_core;
} BO_Prefetchers;

/* PUBLIC INTERFACE */
void pref_bo_init(HWP*);
void pref_bo_umlc_miss(uns8 proc_id, Addr lineAddr, Addr loadPC, uns32 global_hist);
void pref_bo_umlc_prefhit(uns8 proc_id, Addr lineAddr, Addr loadPC, uns32 global_hist);
void pref_bo_umlc_hit(uns8 proc_id, Addr lineAddr, Addr loadPC, uns32 global_hist);
void pref_bo_umlc_train(uns8 proc_id, Addr lineAddr, Addr loadPC, Flag pref_hit);
void below_receive(uns8 proc_id, Addr addr, Flag);
void send_request(uns8 proc_id, Addr lineAddr, Addr loadPC, uns32 global_hist);

void pref_bo_on_cache_fill(uns8 proc_id, Addr addr, Flag is_prefetch);

#endif
