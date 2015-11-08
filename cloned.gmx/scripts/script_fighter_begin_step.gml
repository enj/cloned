if(global.pause) {
    hspeed=0;
    vspeed=0;
    exit;
}

// Check collisions and stop movement
if (1) {
    if (place_meeting(x+hspeed,y,opponent)) hspeed=0;
    if (place_meeting(x,y+vspeed,opponent)) vspeed=0;
}

