if(!is_undefined(fighter) && !run_step) fighter.hspeed = 0;
if(global.pause || !run_step) exit;

step++;
if(step%5==0) {
    if(!fighter.jumping) fighter.hspeed=0;
    script_ai_decide();
    step=0;
}

