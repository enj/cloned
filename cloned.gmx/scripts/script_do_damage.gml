var attacker = argument0;
var victim = argument1;
var type = argument2;
var guard = victim.blocking;

var damage;
switch(type) {
    case "punch":
        damage = attacker.punch_damage;
        break;
    case "kick":
        damage = attacker.kick_damage;
        break;
    case "special":
        damage = attacker.special_damage;
        break;
    default:
        damage = 0;
        break;
}

if (guard) {
    damage /= 2; //TODO maybe character specific
}

attacker.mp += damage / 2;

victim.hp -= damage;
victim.mp += damage;

attacker.mp = min(attacker.mp, attacker.max_mp);
victim.mp = min(victim.mp, victim.max_mp);

