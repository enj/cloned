var my_fighter=argument0;
if(my_fighter.attacking || my_fighter.blocking) exit;
my_fighter.hspeed=0;

with(my_fighter) {
    blocking=true;
    sprite_index=sprite_blocking;
    depth=-1000;
}

