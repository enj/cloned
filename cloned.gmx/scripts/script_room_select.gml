if(global.training_mode) {
    room_restart();
    exit;
}

if(global.mode=="arcade") {
    if(ds_list_size(global.fighter_list) > 0) {
        global.player2=ds_list_find_value(global.fighter_list,0);
        global.stage=ds_list_find_value(global.fighter_list,0);
        ds_list_delete(global.fighter_list,0);
        room_goto(rm_vs);
    } else {
        game_restart();
    }
    
    exit;
}


