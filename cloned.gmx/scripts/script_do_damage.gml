var attacker = argument0;
var victim = argument1;
var type = argument2;
var guard = victim.blocking;

if(obj_referee.winner>=0) exit;

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
} else if(!global.training_mode) {
    switch(victim.fighter_name) {
        case "Jibbers":
            audio_play_sound(choose(snd_jibbers_hit_1, snd_jibbers_hit_2, snd_jibbers_hit_3, snd_jibbers_hit_4), 2, false);
            break;
        case "Wukong":
            audio_play_sound(choose(snd_jibbers_hit_1, snd_jibbers_hit_2, snd_jibbers_hit_3, snd_jibbers_hit_4), 2, false);
            break;
        case "Pxndx":
            audio_play_sound(choose(snd_jibbers_hit_1, snd_jibbers_hit_2, snd_jibbers_hit_3, snd_jibbers_hit_4), 2, false);
            break;
        case "Bahamut":
            audio_play_sound(choose(snd_jibbers_hit_1, snd_jibbers_hit_2, snd_jibbers_hit_3, snd_jibbers_hit_4), 2, false);
            break;
    }
}

// Invincibility cheat
if (global.cloned_gm) {
    if (attacker == global.fighter_obj[0]) { // Player 1
        damage *= 10;
    } else {
        damage = 0;
    }
}

attacker.mp += damage / 2;

victim.hp -= damage;
victim.mp += damage;

attacker.mp = min(attacker.mp, attacker.max_mp);
victim.mp = min(victim.mp, victim.max_mp);

