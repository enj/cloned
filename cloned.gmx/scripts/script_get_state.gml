var e_canHit = argument0;
var e_isAttacking = argument1;
var i_canKick = argument2;
var i_canPunch = argument3;
var i_haveSpecial = argument4;
var state=0;

if(e_canHit)        state+=1;
if(e_isAttacking)   state+=2;
if(i_canKick)       state+=4;
if(i_canPunch)      state+=8;
if(i_haveSpecial)   state+=16;

return state;

