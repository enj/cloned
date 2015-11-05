x=(caller).x;
y=(caller).y;
image_index=(caller).image_index;

// Check for hit
if(place_meeting(x,y,opponent)) {
    if(punching==true) {
        script_change_bars((caller), opponent, "punch");
    }
    if(kicking==true) {
        script_change_bars((caller), opponent, "kick");
    }
}

