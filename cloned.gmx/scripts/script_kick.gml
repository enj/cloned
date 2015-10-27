var my_fighter=argument0;
if(my_fighter.attacking) exit;

var hitbox_obj=instance_create(my_fighter.x,my_fighter.y,obj_hitbox);
with(hitbox_obj) {    
    opponent = my_fighter.opponent;
    caller = my_fighter;
    sprite_index=my_fighter.mask_kicking;
    image_xscale=my_fighter.image_xscale;
    image_yscale=my_fighter.image_yscale;
    image_speed=my_fighter.image_speed;
    kicking=true;
    finished_creating=true;
}

with(my_fighter) {
    attacking=true;
    sprite_index=sprite_kicking;
    depth=-1000;
}

