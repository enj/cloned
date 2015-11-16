set_alarm=false;
var scale = 1;
switch(player2) {
    case "jibbers":
        sprite_index=spr_vs_jibbers;
        name="Jibbers#McSwaggers";
        break;
    case "wukong":
        sprite_index=spr_vs_wukong;
        name="Sun Wukong";
        break;
    case "panda":
        sprite_index=spr_vs_panda;
        name="Pxndx";
        break;
//    case "cassandra":
//        sprite_index=spr_vs_cassandra;
//        break;
    case "bahamut":
        sprite_index=spr_vs_bahamut;
        name="Professor#Bahamut";
        break;
}
image_xscale=-scale;
image_yscale=scale;

