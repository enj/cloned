if(hp==0) {
    image_speed=0;
    image_index=3;
    exit;
}

if(blocking) {
    image_speed=0;
} else if(!jumping) {
    sprite_index=sprite_standing;
}



if(attacking) {
    attacking = false;
    depth=-1;
    opponent.depth=0;
    if(jumping) sprite_index=sprite_jumping;
}

if(image_speed<0) {
    image_speed = base_image_speed;
}

