if(!declared_winner) step++;
if(!declared_winner && step>=900) {
    controller_obj[0].run_step = false;
    controller_obj[1].run_step = false;
    declared_winner=true;
    winner_message="Draw!";
    var p1_percent = fighter_obj[0].hp/fighter_obj[0].max_hp;
    var p2_percent = fighter_obj[1].hp/fighter_obj[1].max_hp;
    if(p1_percent > p2_percent) winner_message = fighter_obj[0].fighter_name + " Wins!";
    if(p2_percent > p1_percent) winner_message = fighter_obj[1].fighter_name + " Wins!";
    alarm[0]=60;
}

if(fighter_obj[0].hp<=0) {
    controller_obj[0].run_step = false;
    controller_obj[1].run_step = false;
    if(!declared_winner) {
        declared_winner=true;
        winner_message = fighter_obj[1].fighter_name + " Wins!";
        alarm[0]=60;
    }
} else if(fighter_obj[1].hp<=0) {
    controller_obj[0].run_step = false;
    controller_obj[1].run_step = false;
    if(!declared_winner) {
        declared_winner=true;
        winner_message = fighter_obj[0].fighter_name + " Wins!";
        alarm[0]=60;
    }
}

