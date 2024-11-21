#ifndef __PREF_BO_H__
#define __PREF_BO__


#include "globals/global_defs.h"
#include "libs/cache_lib.h"



typedef struct RR_Table_Struct{ 
    Cache cache;
    uns8* scores; 

} RR_Table;

#endif