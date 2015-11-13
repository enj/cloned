var my_fighter=argument0;
if(my_fighter.attacking || my_fighter.blocking || my_fighter.mp<my_fighter.max_mp) exit;

my_fighter.mp=0;
switch(my_fighter.fighter_name) {
    case "Jibbers":
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
    case "Cassandra":
        var o = instance_create(0,0,obj_special_bahamut);
        o.fighter = my_fighter;
        o.opp_x = my_fighter.opponent.x;
        o.opp_y = my_fighter.opponent.y;
        break;
}

