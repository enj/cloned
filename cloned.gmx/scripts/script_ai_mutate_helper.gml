var ai_map, parent1, parent2, offspring_pos;
ai_map = argument0;
parent1 = argument1;
parent2 = argument2;
offspring_pos = argument3;

var size, key, ave, temp_fitness, temp_mr, temp_ma, mutation_rate, mutation_amt;
mutation_rate=.05;
mutation_amt = 2;

size=ds_map_size(ai_map[parent1]);
temp_fitness=-1;
temp_fitness=ds_map_find_value(ai_map[parent1], "fitness");
key=ds_map_find_first(ai_map[parent1]);
    

//mutation rate = 0.05 - .85
//fitness = 1, mr = 0.05
//fitness = 0, mr = 0.30
//fitness = -1, mr = 0.85
temp_mr=mutation_rate+((1-temp_fitness)*(1-temp_fitness))/5;
for(j=0;j<size-1;j++) {
    ave=(ds_map_find_value(ai_map[parent1],key) + ds_map_find_value(ai_map[parent2],key))/2;
    if(key!="fitness") {
//        show_message("Updating [" + key + "]");
        if(random(1)<mutation_rate) {
            ave*=random(mutation_amt);
            if(ave>100) ave = 100;
            if(ave<.01) ave = random(mutation_amt);
        }
    }
    if(key=="generation") {
        ds_map_replace(ai_map[offspring_pos], "generation", ai_training_generation);
    } else { 
        ds_map_replace(ai_map[offspring_pos], key, ave);
//        show_debug_message(string(parent1) + ": " + key + " : " + string(ave));
    }
    key=ds_map_find_next(ai_map[parent1], key);
}

//ds_map_replace(ai_map[offspring_pos], "generation", ai_training_generation);
//ds_map_replace(ai_map[offspring_pos], "fitness", ave);

if(ds_map_find_value(ai_map[parent1], "fitness") > 1) {
    show_message("Why is fitness [" + string(ds_map_find_value(ai_map[parent1], "fitness")) + "]?");
}

