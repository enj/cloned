if(global.pause) {
    hspeed=0;
    vspeed=0;
    exit;
}

// Player death
if(hp<=0) {
    hp=0;
}


gravity=1;
//if(!place_meeting(x,y+1,obj_ground)) gravity = 1;
//else gravity = 0;


// Swap facing direction
if((facing_right == (opponent.x < x))) {
    image_xscale*=-1;
    facing_right = !facing_right;
}


