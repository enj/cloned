global.fighter_list = ds_list_create();

ds_list_add(global.fighter_list, "wukong");
ds_list_add(global.fighter_list, "jibbers");
ds_list_add(global.fighter_list, "cassandra");
ds_list_add(global.fighter_list, "panda");

ds_list_delete(global.fighter_list, ds_list_find_index(global.fighter_list, global.player1));
ds_list_shuffle(global.fighter_list);

ds_list_add(global.fighter_list, global.player1);
//ds_list_add(global.fighter_list, "bahamut");

script_room_select();

