event_inherited();
fighter=undefined;
// Controller Settings
use_controller=true;
pad_right = gp_axislh;
pad_left  = gp_axislh;
pad_kick  = gp_face1;
pad_jump  = gp_face2;
pad_punch = gp_face3;
pad_block = gp_face4;
pad_special = gp_shoulderrb;
pad_pause = gp_start;

// Pick Controller
script_set_controller(self);

//Player 1 Controls
if(self.id==controller_obj[0].id) {
    // Set controls
    with(controller_obj[0]) {
        use_controller = true;
        key_right = vk_right;
        key_left  = vk_left;
        key_jump  = vk_up;
        key_down  = vk_down;
        key_punch = vk_control;
        key_kick  = vk_space;
        key_block = ord('Z');
        key_special = ord('X');
        key_pause = vk_escape;
    }
}

//Player 2 Controls
if(self.id==controller_obj[1].id) {
    with(controller_obj[1]) {
        use_controller = true;
        key_right = ord('D');
        key_left  = ord('A');
        key_jump  = ord('W');
        key_punch = ord('P');
        key_down  = ord('S');
        key_kick  = ord('O');
        key_block = ord('I');
        key_special = ord('U');
        key_pause = vk_escape;
    }
}

