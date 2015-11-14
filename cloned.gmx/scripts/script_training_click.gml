display_reset(0,false);
texture_set_interpolation(false);

//global.player1="wukong";
//global.player2="jibbers";

global.training_speed = 10000;

with(controller_obj[0]) instance_change(obj_ai_controller, true);
with(controller_obj[1]) instance_change(obj_ai_controller, true);

globalvar p1_ai_array;
globalvar p2_ai_array;

for(i=99;i>=0;i--) {
    p1_ai_array[i] = ds_grid_create(8,32);   // New method
    p2_ai_array[i] = ds_grid_create(8,32);   // New method
}



var f = ds_list_create();
ds_list_add(f, "wukong");
ds_list_add(f, "jibbers");
ds_list_add(f, "panda");
//ds_list_add(f, "cassandra");
//ds_list_add(f, "bahamut");
ds_list_shuffle(f);
global.player1 = ds_list_find_value(f,0);
ds_list_delete(f,0);
global.player2 = ds_list_find_value(f,0);
ds_list_destroy(f);
script_read_ai_generation(global.player1, global.p1_ai_array);
script_read_ai_generation(global.player2, global.p2_ai_array);
    
global.training_mode=true;

room_goto(rm_training);

