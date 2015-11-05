
fighter_obj[0] = instance_create(150,700,obj_fighter);
script_player_load(fighter_obj[0],player1);
fighter_obj[1] = instance_create(874,700,obj_fighter);
script_player_load(fighter_obj[1],player2);
fighter_obj[0].opponent=fighter_obj[1];
fighter_obj[1].opponent=fighter_obj[0];

with(controller_obj[0]) {
    fighter = fighter_obj[0];
    fighter.player=0;
    if(controller_obj[0].is_ai) {
        ai_grid=global.p1_ai_array[ai_training_instance];
    }
}
with(controller_obj[1]) {
    fighter = fighter_obj[1];
    fighter.player=1;
    if(controller_obj[1].is_ai) {
        ai_grid=global.p2_ai_array[ai_training_instance];
    }
}

if(global.training_mode) {
    room_speed=10000;
} else {
    room_speed=30;
}

instance_create(0,384,obj_view_follow);
instance_create(0,0,obj_referee);
