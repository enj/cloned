set_alarm=false;
var scale = 1;
switch(player2) {
    case "jibbers":
        sprite_index=spr_vs_jibbers;
        scale=1;
        break;
    case "wukong":
        sprite_index=spr_vs_wukong;
        scale=1;
        break;
    case "panda":
        break;
    case "cassandra":
        break;
}
image_xscale=-scale;
image_yscale=scale;

