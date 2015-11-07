if(global.pause) exit;

if(run_step && step%5==0) {
    hspeed = 0;
    script_ai_decide();
    step=0;
}
step++;

