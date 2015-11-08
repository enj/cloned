texture_set_interpolation(false);
display_reset(0,false);

global.player1="wukong";
global.player2="jibbers";

global.training_speed = 10000;

with(controller_obj[0]) instance_change(obj_ai_controller, true);
with(controller_obj[1]) instance_change(obj_ai_controller, true);

globalvar p1_ai_array;
globalvar p2_ai_array;

for(i=99;i>=0;i--) {
    p1_ai_array[i] = ds_grid_create(8,32);   // New method
    p2_ai_array[i] = ds_grid_create(8,32);   // New method
}



script_read_ai_generation("Wukong", p1_ai_array);
script_read_ai_generation("Jibbers", p2_ai_array);
global.training_mode=true;

room_goto(rm_training);

