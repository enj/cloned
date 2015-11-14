if(global.pause) exit;

x=(caller).x;
y=(caller).y;
image_index=(caller).image_index;

// Check for hit
if(place_meeting(x,y,opponent)) {
    if(punching==true) {
        script_do_damage((caller), opponent, "punch");
        instance_destroy();
    }
    if(kicking==true) {
        script_do_damage((caller), opponent, "kick");
        instance_destroy();
    }
    if(special==true) {
        if((caller).fighter_name=="Wukong") {
            if(opponent.image_speed<0) {
                opponent.image_speed = opponent.base_image_speed;
            }

            with(opponent) {
                sprite_index=sprite_jumping;
                vspeed=-20;
                if(facing_right) hspeed=-10;
                else hspeed=10;
                jumping=true;
            }
        }
        script_do_damage((caller), opponent, "special");
        instance_destroy();
    }
}

