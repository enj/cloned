var my_fighter=argument0;

var unlimited_special = global.cloned_gm && my_fighter == global.fighter_obj[0];
var can_use_special = unlimited_special || my_fighter.mp >= my_fighter.max_mp;

if (my_fighter.attacking || my_fighter.blocking || !can_use_special) exit;

switch(my_fighter.fighter_name) {
    case "Jibbers":
        if(!global.training_mode) audio_play_sound(snd_jibbers_attack_1, 1, false);
        with(my_fighter) {
            if(!jumping) hspeed=0;
            if(image_speed<0) {
                image_speed = base_image_speed;
            }
            attacking=true;
            sprite_index=sprite_special;
            depth=-1000;
        }
        var o = instance_create(0,0,obj_special_jibbers);
        o.fighter = my_fighter;
        break;
    case "Pxndx":
        with(my_fighter) {
            if(!jumping) hspeed=0;
            if(image_speed<0) {
                image_speed = base_image_speed;
            }
            attacking=true;
            sprite_index=sprite_special;
            depth=-1000;
        }
        var o = instance_create(my_fighter.x,my_fighter.y,obj_special_panda);
        o.fighter = my_fighter;
        o.hspeed=10;
        if(!my_fighter.facing_right) {
            o.hspeed*=-1;
            o.image_xscale=-1;
        }
        break;
    case "Wukong":
        if(my_fighter.jumping) exit;
        with(my_fighter) {
            if(!jumping) hspeed=0;
            if(image_speed<0) {
                image_speed = base_image_speed;
            }
            attacking=true;
            sprite_index=sprite_special;
            depth=-1000;
        }
        var hitbox_obj=instance_create(my_fighter.x,my_fighter.y,obj_hitbox);
        with(hitbox_obj) {    
            opponent = my_fighter.opponent;
            caller = my_fighter;
            sprite_index=my_fighter.mask_special;
            image_xscale=my_fighter.image_xscale;
            image_yscale=my_fighter.image_yscale;
            image_speed=my_fighter.image_speed;
            special=true;
            finished_creating=true;
        }
        break;
    case "Bahamut":
        if(my_fighter.jumping) exit;
        with(my_fighter) {
            if(image_speed<0) {
                image_speed = base_image_speed;
            }
            attacking=true;
            sprite_index=sprite_special;
            depth=-1000;
        }
        if(my_fighter.dragon) {
            var o = instance_create(0,0,obj_special_bahamut);
            o.fighter = my_fighter;
            o.opp_x = my_fighter.opponent.x;
            o.opp_y = my_fighter.opponent.y;
        } else {
            var hitbox_obj=instance_create(my_fighter.x,my_fighter.y,obj_hitbox);
            with(hitbox_obj) {    
                opponent = my_fighter.opponent;
                caller = my_fighter;
                sprite_index=my_fighter.mask_special;
                image_xscale=my_fighter.image_xscale;
                image_yscale=my_fighter.image_yscale;
                image_speed=my_fighter.image_speed;
                special=true;
                finished_creating=true;
            }
        }
        break;
}
my_fighter.mp=0;
