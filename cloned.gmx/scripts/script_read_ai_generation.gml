var i, element_str;
var fighter = argument0;
var ai_map = argument1;

ini_open("ai_" + fighter + ".ini");
for(i=0;i<array_length_1d(ai_map);i++) {
    element_str=ini_read_string(string(i),"0","");
    if(element_str != "") {
        ds_map_read(ai_map[i], element_str);
    } else {
        show_message("Found an empty string");
        script_gen_ai_temp(fighter, ai_map);
        break;
    }
//    for( j = 0; j < ds_map_size(ai_map[i]); j++ ) {
        if(ds_map_find_value(ai_map[i],"generation") > global.ai_training_generation) {
              global.ai_training_generation = ds_map_find_value(ai_map[i],"generation");
//        }    
    }
}
ini_close();
//show_message("Loaded AI for " + fighter_obj.fighter_name);
