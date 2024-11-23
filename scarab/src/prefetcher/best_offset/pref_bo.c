/* 
Struct: Recent request table 
contains: 
- directly mapped cache containing hashing tag bits 
- score table in paralele with cache 
- I suggest just importing the pre-existing cache struct so we don't need to recreate the functionality of a fixed size directly mapped hash table. 
^ may need to reimpliment cache ;( 

Struct: RR element (whats stored in cache)
- int score 
- int tag 
- offset d
(possibly other necesary elements)

^^ so lemme think about how to actually achieve this 
C does not support inheritence or overloading which would make this so so much easier 


Support functions: 
Incriment score (tag, RR_table)
- Increases the score corresponding to an item in the cache 

Insert element (tag, RR_table)
- Adds new element to the RR table 

Reset scores(RR_table) 
- returns all scores to 0 for use at end of learning phase 

get highest score(RR_table)
- returns pointer to RR table corresponding to the element with the highest score, also gets the score value. 

update_D(RR)table)
- Sets D to d for the highest scoring

Also: learning phase tracker 
Loop learning phase 

global int num_episodes = 0; 
global offset D = (init value); 

when(op){
    num_episodes++; 
}
cur_best_d = highest_score(RR_TABLE)
if(num_epsides > MAXEPISODES || cur_best_d.score >= MAXSCORE){ 
    num_episodes = 0; 
    D = cur_best_d.d 
}
*/
#include "pref_bo.h"
#include "debug/debug_macros.h"
#include "debug/debug_print.h"
#include "globals/assert.h"
#include "globals/global_defs.h"
#include "globals/global_types.h"
#include "globals/global_vars.h"
#include "globals/utils.h"

#include "bp/bp.h"
#include "dcache_stage.h"
#include "map.h"
#include "model.h"

#include "core.param.h"
#include "debug/debug.param.h"
#include "memory/memory.param.h"
#include "prefetcher//stream.param.h"
#include "prefetcher/pref.param.h"
#include "prefetcher/pref_common.h"
#include "prefetcher/stream_pref.h"
#include "statistics.h"
#include "prefetcher/best_offset/pref_bo.param.h"

#include "cmp_model.h"
#include "prefetcher/l2l1pref.h"
#include "libs/hash_lib.h"
#include "libs/port_lib.h"

/// globals /// 

typedef uns8 (*HashFunction)(uns32); //make sure input type is correct for when we actually impliment this 

void replace_best_offset(BO_Pref*);
void round_occurs(Mem_Req_Info*, BO_Pref*); 
void incriminet_score(int, Score_Table*);
RR_Table* init_rr_table(HashFunction); 

void round_occurs(Mem_Req_Info* req, BO_Pref* bo_pref){ 
    if(req){
        bo_pref->round_count++; 
    }

    // access hash table  
    void* access = access_rr_table(req); // placeholder needs implimentation 

    if(access){ //check if element is in rr table 
        int access_index = get_access_index(access); // placeholder needs implimentation 
        // need to convert an accessed item from the recent requests table into a corresponding index in the score table 
        // unsure how to do this, need to check paper more closely for exactly how the score table is implimented in relation to the access table 
        incriminet_score(access_index, bo_pref->score_table); 
    } else { 
        insert_rr_table(req); //still a placeholder here 
        // 
    }

    if(bo_pref->round_count > bo_pref->round_max){ 
        end_learning_phase(bo_pref); 

    } 


}

void end_learning_phase(BO_Pref* bo_pref){
    replace_best_offset(bo_pref); 
    bo_pref->round_count = 0; 
    reset_scores(bo_pref->score_table); 
}

void replace_best_offset(BO_Pref* bo_pref){ 
    bo_pref->best_offset = bo_pref->score_table->table[bo_pref->score_table->highest_score_index]->offset; 
}

void incriminet_score(int index, Score_Table* score_table){ // need to check the tag datatype for tag 
    score_table->table[index]->score++; 
    if(score_table->table[index]->score > score_table->table[score_table->highest_score_index]->score) {
        score_table->highest_score_index = index;  
    }

}

RR_Table* init_rr_table(HashFunction hash_function){
    RR_Table* rr_table; // I forget the correct format for malloc in c, should get corrected  

    rr_table->hashmap = init_hashmap();  // needs work here for proper hashmap init 
    rr_table->hash_function = hash_function; 

    return rr_table; 
}

Score_Table* init_score_table(int table_entry_count){
    Score_Table* score_table; 
    score_table->table = (Score_Table_Entry**)calloc(table_entry_count, sizeof(Score_Table_Entry*));
    score_table->table_size = table_entry_count; 
    score_table->highest_score_index = 0;  
    for(int i; i < table_entry_count; i++){
        score_table->table[i] = init_score_table_entry(); 
    }
    return score_table; 

}

// initializes score table entry with a score and an offset, both of which are set to 0 at initialization. 
Score_Table_Entry* init_score_table_entry(){ // still need to check offset dtype 
    Score_Table_Entry* score_table; 
    score_table->score = 0; 
    score_table->offset = 0; 
    return score_table; 
}


// Calls all the other init functions to build the full BO_Pref struct 
BO_Pref* init_bo_pref(int table_entry_count, HashFunction hash_function){ //
    BO_Pref* bo_pref; 
    bo_pref->rr_table = init_rr_table(hash_function);
    bo_pref->score_table = init_score_table(table_entry_count); 
    bo_pref->round_count = 0; 
    bo_pref->score_max = PREF_BO_SCORE_MAX; 
    bo_pref->round_max = PREF_BO_ROUND_MAX;   
    bo_pref->best_offset = 0; // unsure what initialization value should be for this  
    return bo_pref;  
}

uns8 hash_function(uns32) { // take a memory address (make sure to take the correct data type) and xor 8 least significant against next 8 bits. Figure out how to do that later... 
    return 1;  
}

void reset_scores(Score_Table* score_table){
    for(int i; i < score_table->table_size; i++){
        score_table->table[i]->score = 0; 
    }
}