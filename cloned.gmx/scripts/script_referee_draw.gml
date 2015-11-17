if(!global.training_mode && !round_started) {
    script_draw_stroked_text("Round " + string(global.wins[0] + global.wins[1] + 1),view_xview[0]+view_wview[0]/2, 384, .5, c_yellow, c_orange, fa_center, fa_center, 2);
//    exit;
}

if(round_started && timer>(1800-30)) {
    script_draw_stroked_text("Fight!",view_xview[0]+view_wview[0]/2, 384, .5, c_orange, c_yellow, fa_center, fa_center, 2);
}

script_draw_stroked_text(string(ceil(timer/30)), view_xview[0]+view_wview[0]/2,0, 0.5, c_blue, c_gray, fa_center, fa_top, 1);

if(declared_winner) {
    script_draw_stroked_text(winner_message, view_xview[0]+view_wview[0]/2, 384, 1, c_green, c_yellow, fa_center, fa_center, 4);
}

