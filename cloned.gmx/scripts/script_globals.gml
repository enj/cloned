globalvar used_controllers;
used_controllers[0] = false;
used_controllers[1] = false;
used_controllers[2] = false;
used_controllers[3] = false;

globalvar pause;
pause=false;

globalvar player1; //Name of character
globalvar player2; //Name of character
globalvar stage;   //Name of stage
globalvar controller_obj;
controller_obj[0] = instance_create(0,0,obj_controller);
controller_obj[1] = instance_create(0,0,obj_controller);

globalvar fighter_obj;
randomize();

globalvar wins;
wins[0]=0;
wins[1]=0;
globalvar ai_training_instance;
ai_training_instance=0;

globalvar ai_training_generation;
ai_training_generation=1;

globalvar ai_training_total;
ai_training_total=0;

globalvar training_mode;
training_mode=false;

globalvar ai_fitness_1;
globalvar ai_fitness_2;
