var fighter = argument0;
var ai_array = argument1;
var player = argument2;
var opponent = fighter.opponent;

var fitness=(fighter.hp/fighter.max_hp)-(opponent.hp/opponent.max_hp);


if(player==0) global.ai_fitness_1[ai_training_instance] = fitness;
if(player==1) global.ai_fitness_2[ai_training_instance] = fitness;


if(fitness>0) global.wins[fighter.player]++;

