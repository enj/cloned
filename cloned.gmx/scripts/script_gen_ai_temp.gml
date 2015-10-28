var i, map;
var fighter_obj = argument0;
var ai_map = argument1;
for(i=0;i<array_length_1d(ai_map);i++) {
    map=ai_map[i];
    //Probabilities
    ds_map_add(map, "prob_punch", random(10));
    ds_map_add(map, "prob_kick", random(10));
    ds_map_add(map, "prob_block", random(10));
    ds_map_add(map, "prob_forward", random(10));
    ds_map_add(map, "prob_back", random(10));
    ds_map_add(map, "prob_jump", random(10));
    ds_map_add(map, "prob_special", random(10));
    
    //Multipliers
    ds_map_add(map, "block_1", random(10));
    ds_map_add(map, "forward_1", random(10));
    ds_map_add(map, "forward_2", random(10));
    ds_map_add(map, "forward_3", random(10));
    ds_map_add(map, "forward_4", random(10));
    ds_map_add(map, "forward_5", random(10));
    ds_map_add(map, "back_1", random(10));
    ds_map_add(map, "back_2", random(10));
    ds_map_add(map, "back_3", random(10));
    ds_map_add(map, "back_4", random(10));
    ds_map_add(map, "punch_1", random(10));
    ds_map_add(map, "punch_2", random(10));
    ds_map_add(map, "punch_3", random(10));
    ds_map_add(map, "kick_1", random(10));
    ds_map_add(map, "kick_2", random(10));
    ds_map_add(map, "kick_3", random(10));
    
    //Extra
    ds_map_add(map, "generation", 0);
    ds_map_add(map, "fitness", 0);
}
script_save_ai_generation(fighter_obj, ai_map);

