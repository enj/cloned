fighter=argument0;
ai_map=argument1;
var temp;
arrayLength = array_length_1d(ai_map);

//Sort the fitnesses from best to worst
for( i = 0; i < arrayLength; i += 1) {
    for( j = i + 1; j < arrayLength; j += 1 ) {
        if(ds_map_find_value(ai_map[j],"fitness") > ds_map_find_value(ai_map[i],"fitness")) {
             temp = ai_map[j];
             ai_map[j] = ai_map[i];
             ai_map[i] = temp;
        }    
    }
}

script_ai_mutate_helper(ai_map, 0,1,6);
script_ai_mutate_helper(ai_map, 0,3,7);
script_ai_mutate_helper(ai_map, 0,5,8);
script_ai_mutate_helper(ai_map, 1,2,9);
script_ai_mutate_helper(ai_map, 1,4,10);
script_ai_mutate_helper(ai_map, 2,3,11);
script_save_ai_generation(fighter, ai_map);

