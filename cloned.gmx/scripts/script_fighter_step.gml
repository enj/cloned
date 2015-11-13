if(global.pause || room==rm_mainMenu) {
    hspeed=0;
    vspeed=0;
    gravity=0;
    exit;
}


if(place_meeting(x+hspeed, y+vspeed, obj_fighter)) {
    move_contact_solid(direction,hspeed);
}


// Player death
if(hp<=0) {
    hp=0;
    sprite_index=sprite_death;
}


gravity=1;
//if(!place_meeting(x,y+1,obj_ground)) gravity = 1;
//else gravity = 0;


// Swap facing direction
if((facing_right == (opponent.x < x))) {
    image_xscale*=-1;
    facing_right = !facing_right;
}


