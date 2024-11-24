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

typedef uns8 (*HashFunction)(Addr); //make sure input type is correct for when we actually impliment this 

void replace_best_offset(BO_Pref*);
void above_req(Mem_Req_Info*, BO_Pref*); //May take Pref_Mem_Req or just an address input 
void below_receive(Pref_Req_Info*, BO_Pref*);
void incriminet_score(int, Score_Table*);
RR_Table* init_rr_table(HashFunction); 

void above_req(Mem_Req_Info* req, BO_Pref* bo_pref){ 
    if(!PREF_BO_ON) {
        return; 
    }

    if(req){
        bo_pref->round_index++; 
    }

    // access hash table  
    Addr d = pick_d(bo_pref->score_table, bo_pref->round_index); 
    Addr* access = access_rr_table(req->addr - d, bo_pref->rr_table); // placeholder needs implimentation 

    if(access){ //check if element is in rr table 
        int access_index = get_access_index(access); // placeholder needs implimentation 
        // need to convert an accessed item from the recent requests table into a corresponding index in the score table 
        // unsure how to do this, need to check paper more closely for exactly how the score table is implimented in relation to the access table 
        incriminet_score(access_index, bo_pref->score_table); 
    }

    if(bo_pref->round_index >= bo_pref->score_table->table_size) {
        bo_pref->round_index = 0; 
        bo_pref->round_count++; 
    }

    if((bo_pref->round_count >= bo_pref->round_max) || (bo_pref->score_table->table[bo_pref->score_table->highest_score_index]->score >= bo_pref->score_max)){ 
        end_learning_phase(bo_pref); 

    } 


}

void below_receive(Pref_Req_Info* req, BO_Pref* bo_pref) { 
    if(!PREF_BO_ON) {
        return; 
    }
    insert_rr_table(req->loadPC - bo_pref->best_offset, bo_pref->rr_table);
    // need to make sure the hash table REPLACES on 
}

Pref_Req_Info* send_bo_prefetch(Mem_Req_Info* req, BO_Pref* bo_pref){ // this is purely a placeholder/ theoretical, we need to figure out how the prefetching actually works
// what this SHOULD do is send/ make a prefetch request for X + D where D is the learned offset and X is the current request 
    if(!PREF_BO_ON) { 
        return; 
    }
    Pref_Req_Info* req; 
    // build mem request 
    req->addr = req->addr + bo_pref->best_offset; 
    // should look SOMETHING like this. Really dont understand how the prefetching system works rn ;( 
    return req; 
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
    score_table->highest_score_index = 0;
    for(int i; i < table_entry_count; i++){
        score_table->table[i] = init_score_table_entry(i); 
    }
    return score_table; 

}

// initializes score table entry with a score and an offset, both of which are set to 0 at initialization. 
// 1 2 3 4 5 6 8 9 10 12 15 16 18 20 24 25 27 30 32 36 40 45
// 48 50 54 60 64 72 75 80 81 90 96 100 108 120 125 128 135
// 144 150 160 162 180 192 200 216 225 240 243 250 256.
// is the list of offsets used in offset list in paper, for a total offset list size of 51
// definitely prefer not to hardcode this... 
// ALSO BIIIG note 
// we do NOT know the best way to store offsets. We want to be able to add them directly to the addr requests, but they may need to be in the form of 
// (most significant bits)(offset)(least significant bits) 
// so for easy addition, we would want to store them here as something like ...00100..., ...01000..., 01100..., etc  (corresponding to offsets 1, 2, 3) where ... represent 0's continuing for an unkown length 
// such that the offset is properly formatted in relation to a full address. 
Score_Table_Entry* init_score_table_entry(int offset){ // still need to check offset dtype 
    Score_Table_Entry* score_table; 
    score_table->score = 0; 
    score_table->offset = entry_index_to_offset(offset); 
    return score_table; 
}

Addr entry_index_to_offset(offset) {
    return offset; // implimentation unkown as of right now 
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

uns8 hash_function(Addr mem_req) { // take a memory address (make sure to take the correct data type) and xor 8 least significant against next 8 bits. Figure out how to do that later... 
    // extract first 8 bits 
    uns8 least_sig = mem_req & 0XFF;
    // shift and extract next 8  
    uns8 next = (mem_req >> 8) & 0xFF;
    // xor against each other and return 
    return least_sig ^ next;   
    // this code comes from chatgpt and may not be functional, but its correct structuraly. 
}

// sets all scores in score table to 0, used when learning phase ends 
void reset_scores(Score_Table* score_table){
    for(int i; i < score_table->table_size; i++){
        score_table->table[i]->score = 0; 
    }
}

Addr* access_rr_table(Addr req, RR_Table* rr_table) { 
    Addr* access = (Addr*)hash_table_access(rr_table->hashmap, rr_table->hash_function(req)); 
    return access; 
} 

// rr table has 0 associativity, so this just attempts to create a new entry... 
// if theres already an item there it just deletes it and creates the new entry 
Addr* insert_rr_table(Addr req, RR_Table* rr_table) { 
    Flag* new_entry; 
    Addr* access = (Addr*)hash_table_access_create(rr_table->hashmap, rr_table->hash_function(req), new_entry); 
    if(!new_entry) { 
        hash_table_access_delete(rr_table->hashmap, rr_table->hash_function(req));
        access = (Addr*)hash_table_access_create(rr_table->hashmap, rr_table->hash_function(req), new_entry); 
    }
    return access; 
} 