var my_fighter=argument0;
if(my_fighter.attacking || my_fighter.blocking || my_fighter.jumping) exit;
//my_fighter.hspeed=0;

if(my_fighter.image_speed<0) {
    my_fighter.image_speed = my_fighter.base_image_speed;
}

with(my_fighter) {
    sprite_index=sprite_jumping;
    vspeed=-15;
    jumping=true;
}

