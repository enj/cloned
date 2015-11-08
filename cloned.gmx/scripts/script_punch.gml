var my_fighter=argument0;
if(my_fighter.attacking || my_fighter.blocking || my_fighter.jumping) exit;
my_fighter.hspeed=0;
if(my_fighter.image_speed<0) {
    my_fighter.image_speed = my_fighter.base_image_speed;
}

var hitbox_obj=instance_create(my_fighter.x,my_fighter.y,obj_hitbox);
with(hitbox_obj) {    
    opponent = my_fighter.opponent;
    caller = my_fighter;
    sprite_index=my_fighter.mask_punching;
    image_xscale=my_fighter.image_xscale;
    image_yscale=my_fighter.image_yscale;
    image_speed=my_fighter.image_speed;
    punching=true;
    finished_creating=true;
}

with(my_fighter) {
    attacking=true;
    sprite_index=sprite_punching;
    depth=-1000;
}

