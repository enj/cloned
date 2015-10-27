var opponent=fighter.opponent;
var separation=abs(opponent.x-fighter.x);
separation = separation - (sprite_get_width(opponent.image_index)+sprite_get_xoffset(opponent.image_index))

player=-1;
if(fighter==fighter_obj[0]) player=1 else player=2;
//show_message("Player" + string(player) + " is [" + string(separation) + "] away from the enemy");


var my_kick_range = fighter.kick_range;
var my_punch_range = fighter.punch_range;
var my_range  = max(fighter.punch_range, fighter.kick_range);
var opp_range = max(opponent.punch_range, opponent.kick_range);
var opp_approaching=((opponent.hspeed+separation)<separation);
var prob_punch = 100;
var prob_kick  = 100;
var prob_forward = 100;
var prob_back    = 100;
var prob_jump    = 100;
var prob_special = 100;
var prob_block   = 100;

if(opp_range>separation) {
    if(opponent.attacking) {
        if(opp_range>=my_range) {
            prob_block *= 3;
            prob_forward *= 2;
        } else {
            prob_back += prob_forward/2;
            prob_forward /= 2;
        }
    } else {
        if(opp_range>=my_range) {
            prob_back /= 4;
            prob_forward *= 4;
        }
    }
} else {
    prob_back /= 4;
    prob_forward *= 4;
}
if(my_range>separation) {
    if(my_kick_range>separation) {
        prob_kick*=10;
    } else {
        prob_kick=0;
    }
    if(my_punch_range>separation) {
        prob_punch*=10;
    } else {
        prob_punch=0;
    }
    prob_forward /= 2;
    prob_back *= 2;
} else {
    prob_kick=0;
    prob_punch=0;
}

var total=prob_back+prob_forward+prob_punch+prob_kick;
var r = random(total);
var i = 0;
var action = "none";
if(i<r) action="back";
i+=prob_back;
if(i<r) action="forward";
i+=prob_forward;
if(i<r) action="punch";
i+=prob_punch;
if(i<r) action="kick";
i+=prob_kick;

switch(action) {
    case "none":
        break;
    case "back":
//        show_message("Player" + string(player) + " wants to go back");
        if(fighter.facing_right) {
            script_move_left(fighter);
        } else {
            script_move_right(fighter);
        }
        break;
    case "forward":
//        show_message("Player" + string(player) + " wants to go forward");
        if(fighter.facing_right) {
            script_move_right(fighter);
        } else {
            script_move_left(fighter);
        }
        break;
    case "punch":
//        show_message("Player" + string(player) + " wants to punch");
        script_punch(fighter);
        break;
    case "kick":
//        show_message("Player" + string(player) + " wants to kick");
        script_kick(fighter);
        break;
}



