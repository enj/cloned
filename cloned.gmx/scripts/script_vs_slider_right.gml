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
        sprite_index=spr_vs_panda;
        break;
    case "cassandra":
        sprite_index=spr_vs_cassandra;
        break;
    case "bahamut":
        sprite_index=spr_vs_bahamut;
        break;
}
image_xscale=-scale;
image_yscale=scale;

