//if(!is_undefined(fighter) && !fighter.jumping) fighter.hspeed = 0;
if(!run_step || global.pause || attacking) exit;


if(keyboard_check_pressed(key_pause) || gamepad_button_check_pressed(controller_num, pad_pause)) {
    var o = instance_create(0,0,obj_pause_menu);
    o.controller=controller_num;
}

if(keyboard_check(key_jump) || gamepad_button_check_pressed(controller_num, pad_jump)) {
    script_execute(script_jump, fighter);
}

if(!fighter.jumping) fighter.hspeed = 0;

if(keyboard_check_pressed(key_special) || gamepad_button_check_pressed(controller_num, pad_special)) {
    script_execute(script_special_attack, fighter);
}
if(keyboard_check_pressed(key_punch) || gamepad_button_check_pressed(controller_num, pad_punch)) {
    script_execute(script_punch, fighter);    
}
if(keyboard_check_pressed(key_kick) || gamepad_button_check_pressed(controller_num, pad_kick)) {
    script_execute(script_kick, fighter);
}
if(keyboard_check_pressed(key_block) || gamepad_button_check_pressed(controller_num, pad_block) && !fighter.blocking) {
    script_execute(script_block, fighter);
}
if(keyboard_check(key_left) || gamepad_axis_value(controller_num, pad_left)<-.8) {
    script_execute(script_move_left, fighter);
}
if(keyboard_check(key_right) || gamepad_axis_value(controller_num, pad_right)>.8) {
    script_execute(script_move_right, fighter);
}   
if(fighter.blocking && !(keyboard_check(key_block) || gamepad_button_check(controller_num, pad_block))) {
    script_execute(script_block_end, fighter);
}


