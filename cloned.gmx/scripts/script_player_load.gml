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
        with(player_obj) instance_change(obj_panda, true);
        break;
    case "cassandra":
        with(player_obj) instance_change(obj_cassandra, true);
        break;
    case "bahamut":
        with(player_obj) instance_change(obj_bahamut_human, true);
        break;
}
