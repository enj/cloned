var inc_generation = false;
if(global.training_mode && controller_obj[0].is_ai) {
    script_ai_fitness(fighter_obj[0], global.p1_ai_array, 0);
    if(global.ai_training_instance==array_length_1d(global.p1_ai_array)-1) {
        global.p1_ai_array = script_mate_ai(0);
        inc_generation=true;
    }
}
if(global.training_mode && controller_obj[1].is_ai) {
    script_ai_fitness(fighter_obj[1], global.p2_ai_array, 1);
    if(global.ai_training_instance==array_length_1d(global.p2_ai_array)-1) {
        global.p2_ai_array = script_mate_ai(1);
        incinc_generation_gen=true;
    }
}

if(inc_generation) {
    global.ai_training_instance=0;
    global.ai_training_generation++;
}

if(global.training_mode) {
    global.ai_training_instance++;
    global.ai_training_total++;
}
