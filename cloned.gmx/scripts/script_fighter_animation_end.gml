if(blocking) {
    image_speed=0;
} else if(!jumping) {
    sprite_index=sprite_standing;
}

if(attacking) {
    attacking = false;
    depth=-1;
    opponent.depth=0;
}

if(image_speed<0) {
    image_speed = base_image_speed;
}

