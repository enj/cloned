global.fighter_list = ds_list_create();

ds_list_add(global.fighter_list, "wukong");
ds_list_add(global.fighter_list, "jibbers");
ds_list_add(global.fighter_list, "cassandra");
ds_list_add(global.fighter_list, "panda");

ds_list_delete(global.fighter_list, ds_list_find_index(global.fighter_list, fighter));
ds_list_shuffle(global.fighter_list);

ds_list_add(global.fighter_list, fighter);
//ds_list_add(global.fighter_list, "bahamut");


with(controller_obj[1]) instance_change(obj_ai_controller, true);
with(controller_obj[0]) instance_change(obj_player_controller, true);

global.player1=fighter;



script_room_select();

