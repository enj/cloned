var my_fighter=argument0;
if(my_fighter.attacking || my_fighter.blocking) exit;
with(my_fighter) {
    hspeed=-1*player_speed;
    if(!my_fighter.jumping) sprite_index=sprite_walking;
    if(my_fighter.facing_right) {
        image_speed = -1*my_fighter.base_image_speed;
    }
}
