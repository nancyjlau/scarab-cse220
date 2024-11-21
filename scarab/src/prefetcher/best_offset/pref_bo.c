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