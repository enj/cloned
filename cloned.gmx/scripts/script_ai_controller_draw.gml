
if(global.training_mode && !is_undefined(ai_grid)) {
    var draw_x;
    var player;
    if(self.id==controller_obj[0]) {
        draw_x=10;
        player = 1;
    } else {
        draw_x=850;
        player = 2;
    }
    draw_text(draw_x,70,"Player " + string(player) + "#"
//    + "prob_none: " + string(ds_grid_get(ai_grid,0,state)) + "#"
//    + "prob_punch: " + string(ds_grid_get(ai_grid,3,state)) + "#"
//    + "prob_kick: " + string(ds_grid_get(ai_grid,4,state)) + "#"
//    + "prob_forward: " + string(ds_grid_get(ai_grid,2,state)) + "#"
//    + "prob_back: " + string(ds_grid_get(ai_grid,1,state)) + "#"
//    + "prob_block: " + string(ds_grid_get(ai_grid,5,state)) + "#"
//    + "prob_jump: " + string(ds_grid_get(ai_grid,6,state)) + "#"
//    + "prob_special: " + string(ds_grid_get(ai_grid,7,state)) + "##"
    + "instance: " + string(global.ai_training_instance) + "#"
    + "Generation: " + string(global.ai_training_generation) + "#"
//    + "State: " + string(state)
    );
}

