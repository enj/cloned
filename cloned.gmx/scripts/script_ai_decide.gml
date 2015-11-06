var opponent=fighter.opponent;
var separation=abs(opponent.x-fighter.x);
separation = separation - (sprite_get_width(opponent.image_index)+sprite_get_xoffset(opponent.image_index))

var player=-1;
if(fighter==fighter_obj[0]) player=1 else player=2;


var my_kick_range = fighter.kick_range;
var my_punch_range = fighter.punch_range;
var my_range  = max(fighter.punch_range, fighter.kick_range);
var opp_range = max(opponent.punch_range, opponent.kick_range);
var opp_approaching=((opponent.hspeed+separation)<separation);



var e_canHit = (opp_range>separation);
var e_isAttacking = opponent.attacking;
var i_canKick = (my_kick_range>separation);
var i_canPunch = (my_punch_range>separation);
var i_haveSpecial = (fighter.mp==fighter.max_mp);

state = script_get_state(e_canHit, e_isAttacking, i_canKick, i_canPunch, i_haveSpecial);


script_pick_action_by_state(fighter, state, player);

