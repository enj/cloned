global.player1=fighter;
global.player2="wukong";
global.stage=my_stage;
with(controller_obj[1]) instance_change(obj_ai_controller, true);
with(controller_obj[0]) instance_change(obj_player_controller, true);

globalvar p2_ai_array;


for(i=99;i>=0;i--) {
    p2_ai_array[i] = ds_grid_create(10,32);   // New method
}


script_read_ai_generation("Wukong", p2_ai_array);

room_goto(rm_vs);

