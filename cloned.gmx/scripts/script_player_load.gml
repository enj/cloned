var fighter=argument1;
var player_obj=argument0;

switch(fighter) {
    case "jibbers":
        with(player_obj) instance_change(obj_jibbers, true);
        break;
    case "wukong":
        with(player_obj) instance_change(obj_wukong, true);
        break;
    case "panda":
        break;
    case "cassandra":
        break;
    case "bahamut":
        break;
}
