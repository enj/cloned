var fighter = argument0;
var ai_map = argument1;
var opponent = fighter.opponent;
var fitness=(fighter.hp/fighter.max_hp)-(opponent.hp/opponent.max_hp);
var o_gen = ds_map_find_value(ai_map[ai_training_instance], "generation")+1;
var o_fit = ds_map_find_value(ai_map[ai_training_instance], "fitness");
var n_fit = (o_gen*o_fit + fitness)/(o_gen+1);

//show_message("Got fitness [" + string(fitness) + "]. Going from [" + string(o_fit) + "] to [" + string(n_fit) + "] for generation [" + string(o_gen) + "]");

ds_map_replace(ai_map[ai_training_instance], "fitness", n_fit);
if(fitness>0) global.wins[fighter.player]++;
//show_message(fighter.fighter_name + " had a fitness of [" + string(fitness) + "]");
