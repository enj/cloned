var my_fighter=argument0;
if(my_fighter.attacking || my_fighter.blocking) exit;
with(my_fighter) {
    hspeed=-1*player_speed;
}
