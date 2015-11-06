var my_fighter=argument0;
if(my_fighter.attacking || my_fighter.blocking || my_fighter.mp<my_fighter.max_mp) exit;

my_fighter.mp=0;
switch(my_fighter.fighter_name) {
    case "Jibbers":
        var o = instance_create(0,0,obj_special_jibbers);
        o.fighter = my_fighter;
        break;
}

