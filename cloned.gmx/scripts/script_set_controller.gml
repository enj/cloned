// Pick Controller
var player=argument0;
var gp_num = gamepad_get_device_count();
player.controller_num = -1;
for(var i=0; i<gp_num; i++) {
    if(gamepad_is_connected(i) && player.use_controller && (global.used_controllers[i] == false)) {
        global.used_controllers[i] = true;
        player.controller_num = i;
        break;
    }
}
