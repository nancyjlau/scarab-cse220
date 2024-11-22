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

#include "cmp_model.h"
#include "prefetcher/l2l1pref.h"
#include "libs/hash_lib.h"
#include "libs/port_lib.h"
/// globals /// 

int num_episodes = 0; 

void episode_occurs(void* op){ 
    // Actually import op struct but I cant be fucking bothered rn  
    if(op){
        num_episodes++; 
    }

    if(num_episodes > 1){ //EPISODE_MAX figure out how to get this param in here 
        num_episodes = 0; 

    } 

}

int highest_score(RR_Table* table){ 
    // Find highest algorithm 
    // probably best way to do this is to store and index value for whichever element is highest and check it when we incriment 
}

void incriminet_score(uns8 tag){ // need to check the tag datatype for tag 
    // Dcache access 
    // if present, incriment score for corresponding d 

}

RR_Table* init_RR_table(int table_entry_count){
    RR_Table* rr_table = (RR_Table*)malloc(sizeof(RR_Table)); // I forget the correct format for malloc in c, should get corrected  
    rr_table->scores = (uns8*)malloc(sizeof(uns8) * table_entry_count);  // again double check malloc formatting here 
    int line_size = 1; // this should be how many storage bits we need in a actual storage entry: ie tag size I believe (check paper)
    // init cache 
    init_cache(rr_table->cache, "DCACHE", table_entry_count * line_size, 1, line_size,
             sizeof(Dcache_Data), DCACHE_REPL); // unsure what the replacement policy is for the RR table, check paper. Should probably hardcode whatever replacement policy it uses, although I'm not actually sure 
             //if a directly mapped caches replacement policy actually matters? 

}