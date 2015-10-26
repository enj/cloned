var fighter=argument1;
var player_obj=argument0;

switch(fighter) {
    case "jibbers":
        player_obj.fighter_name="Jibbers";
        player_obj.sprite_standing = spr_jibbers_standing;
        player_obj.sprite_punching = spr_jibbers_punch;
        player_obj.sprite_kicking  = spr_jibbers_kick;
        player_obj.sprite_walking  = spr_jibbers_walking;
        player_obj.mask_punching   = mask_jibbers_punch;
        player_obj.mask_kicking    = mask_jibbers_kick;
        player_obj.sprite_index = sprite_standing;
        player_obj.image_xscale=3;
        player_obj.image_yscale=3;
        player_obj.player_speed = 8;
        player_obj.image_speed = 0.3;
        break;
    case "wukong":
        player_obj.fighter_name="Jibbers";
        player_obj.sprite_standing = spr_wukong_standing;
        player_obj.sprite_punching = spr_wukong_punch;
        player_obj.sprite_kicking  = spr_wukong_kick;
        player_obj.sprite_walking  = spr_wukong_walking;
        player_obj.mask_punching   = mask_wukong_punch;
        player_obj.mask_kicking    = mask_wukong_kick;
        player_obj.sprite_index = sprite_standing;
        player_obj.image_xscale=1;
        player_obj.image_yscale=1;
        player_obj.player_speed = 8;
        player_obj.image_speed = 0.3;
        break;
    case "panda":
        break;
    case "cassandra":
        break;
    case "bahamut":
        break;
}
