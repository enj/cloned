var my_fighter=argument0;
if(my_fighter.attacking || my_fighter.blocking) exit;
my_fighter.hspeed=0;

if(my_fighter.image_speed<0) {
    my_fighter.image_speed = my_fighter.base_image_speed;
}
