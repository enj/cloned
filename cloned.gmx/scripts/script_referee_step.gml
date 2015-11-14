if(global.pause) exit;

if(global.training_mode) {
    if(keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(0, gp_start)) {
        var o = instance_create(0,0,obj_pause_menu);
        o.controller=0;
    }
}

if(!round_started) {
    if(!global.training_mode) {
        if(!played_snd_round) {
            switch(global.wins[0] + global.wins[1]) {
                case 0:
                    audio_play_sound(snd_round1, 1, false);
                    break;
                case 1:
                    audio_play_sound(snd_round2, 1, false);
                    break;
                case 2:
                    audio_play_sound(snd_round3, 1, false);
                    break;
            }
            played_snd_round = true;
        }
        step++;
        if(step==room_speed*3) {
            round_started=true;
            controller_obj[0].run_step = true;
            controller_obj[1].run_step = true;
            audio_play_sound(snd_fight, 1, false);
            step=0;
        }
        exit;
    } else {
        round_started=true;
        controller_obj[0].run_step = true;
        controller_obj[1].run_step = true;
    }
    exit;
}

if(declared_winner) exit;

if(winner >=0) {
    controller_obj[0].run_step = false;
    controller_obj[1].run_step = false;
    switch(winner) {
        case 0:
            winner_message = fighter_obj[0].fighter_name + " Wins!";
            if(!global.training_mode) audio_play_sound(snd_win, 1, false);
            global.wins[0]++;
            break;
        case 1:
            winner_message = fighter_obj[1].fighter_name + " Wins!";
            if(!global.training_mode) audio_play_sound(snd_lose, 1, false);
            global.wins[1]++;
            break;
        case 2:
            winner_message = "Draw!";
            if(!global.training_mode) audio_play_sound(snd_draw, 1, false);
            break;
    }
    declared_winner=true;
    alarm[0]=60;
}

timer--;





if(timer<=0) {
    var p1_percent = fighter_obj[0].hp/fighter_obj[0].max_hp;
    var p2_percent = fighter_obj[1].hp/fighter_obj[1].max_hp;
    if(p1_percent > p2_percent) {
        winner=0;
    } else if(p2_percent > p1_percent) {
        winner=1;
    } else {
        winner=2;
    }
    exit;
}

if(fighter_obj[0].hp<=0) {
    if(fighter_obj[1].hp<=0) {
        winner=2;
    } else {
        winner=1;
    }
} else if(fighter_obj[1].hp<=0) {
    winner=0;
}



