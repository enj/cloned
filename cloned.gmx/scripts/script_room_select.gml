if(global.training_mode) {
    room_restart();
    exit;
}

if(global.mode=="arcade") {
    if(room!=rm_character_select && global.wins[0]<2) {
        if(global.wins[1]==2) {
            script_continue()
            exit;
        }
        room_restart();
        exit;
    }
    global.wins[0]=0;
    global.wins[1]=0;
    global.controller_obj[0].fighter=undefined;
    global.controller_obj[1].fighter=undefined;
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

if(global.mode=="vs") {
    if(room!=rm_character_select && global.wins[0]<2 && global.wins[1]<2) {
        room_restart();
        exit;
    }
    global.wins[0]=0;
    global.wins[1]=0;
    global.controller_obj[0].fighter=undefined;
    global.controller_obj[1].fighter=undefined;
    
    global.stage = (choose("jibbers", "wukong", "cassandra", "panda", "bahamut"));
    room_goto(rm_vs);
}
