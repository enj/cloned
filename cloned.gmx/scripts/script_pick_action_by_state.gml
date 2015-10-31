var fighter = argument0;
var state = argument1;
var ai_grid = controller_obj[argument2-1].ai_grid;

var sum=0;
var action="none";
for(i=0;i<ds_grid_width(ai_grid)-2;i++){
    sum+=ds_grid_get(ai_grid, i, state);
}

var r=random(sum);
sum=0;
var pick;
for(pick=0;pick<ds_grid_width(ai_grid)-2;pick++){
    if(sum>r) {
        break;
    }
    sum+=ds_grid_get(ai_grid, pick, state);
}

switch(pick) {
    case 0:
        //none
        break;
    case 1:
        //back
        if(fighter.facing_right) script_move_left(fighter);
        else script_move_right(fighter);
        break;
    case 2:
        //forward
        if(fighter.facing_right) script_move_right(fighter);
        else script_move_left(fighter);
        break;
    case 3:
        //punch
        script_punch(fighter);
        break;
    case 4:
        //kick
        script_kick(fighter);
        break;
    case 5:
        //block
        script_block(fighter);
        break;
    case 6:
        //jump
        script_jump(fighter);
        break;
    case 7:
        //special
        script_special_attack(fighter);
        break;
}
