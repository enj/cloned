// Set controls
with(controller_obj[0]) {
    use_controller = true;
    key_right = vk_right;
    key_left  = vk_left;
    key_jump  = vk_up;
    key_punch = vk_control;
    key_kick  = vk_space;
    key_block = vk_tab;

}

with(controller_obj[1]) {
    use_controller = true;
    key_right = ord('D');
    key_left  = ord('A');
    key_jump  = ord('W');
    key_punch = ord('P');
    key_kick  = ord('O');
    key_block = ord('I');
}

fighter_obj[0] = instance_create(150,700,obj_fighter);
script_player_load(fighter_obj[0],player1);
fighter_obj[1] = instance_create(874,700,obj_fighter);
script_player_load(fighter_obj[1],player2);
fighter_obj[0].opponent=fighter_obj[1];
fighter_obj[1].opponent=fighter_obj[0];


with(controller_obj[0]) {
    fighter = fighter_obj[0];
    run_step=true;
}
with(controller_obj[1]) {
    fighter = fighter_obj[1];
    run_step=true;
}

