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
}

