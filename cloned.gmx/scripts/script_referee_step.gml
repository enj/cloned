if(global.pause) exit;

if(!round_started) {
    if(!global.training_mode) {
        step++;
        if(step==room_speed*3) {
            round_started=true;
            step=0;
        }
        exit;
    } else {
        round_started=true;
    }
}

if(!declared_winner) {
    if(round_started) {
        timer--;
        controller_obj[0].run_step = true;
        controller_obj[1].run_step = true;
    }
}




if(!declared_winner && timer<=0) {
    controller_obj[0].run_step = false;
    controller_obj[1].run_step = false;
    declared_winner=true;
    winner_message="Draw!";
    var p1_percent = fighter_obj[0].hp/fighter_obj[0].max_hp;
    var p2_percent = fighter_obj[1].hp/fighter_obj[1].max_hp;
    if(p1_percent > p2_percent) {
        winner_message = fighter_obj[0].fighter_name + " Wins!";
        global.wins[0]++;
    }
    if(p2_percent > p1_percent) {
        winner_message = fighter_obj[1].fighter_name + " Wins!";
        global.wins[1]++;
    }
    alarm[0]=60;
}

if(fighter_obj[0].hp<=0) {
    controller_obj[0].run_step = false;
    controller_obj[1].run_step = false;
    if(!declared_winner) {
        declared_winner=true;
        global.wins[1]++;
        winner_message = fighter_obj[1].fighter_name + " Wins!";
        alarm[0]=60;
    }
} else if(fighter_obj[1].hp<=0) {
    controller_obj[0].run_step = false;
    controller_obj[1].run_step = false;
    if(!declared_winner) {
        declared_winner=true;
        global.wins[0]++;
        winner_message = fighter_obj[0].fighter_name + " Wins!";
        alarm[0]=60;
    }
}

if(global.training_mode) {
    if(keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(0, gp_start)) {
        var o = instance_create(0,0,obj_pause_menu);
        o.controller=0;
    }
}

