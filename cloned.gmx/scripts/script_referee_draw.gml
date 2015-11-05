script_draw_stroked_text(string(floor(30-step/30)), view_xview[0]+view_wview[0]/2,20, 0.5, c_blue, c_gray, fa_center, fa_center, 1);
if(declared_winner) {
    script_draw_stroked_text(winner_message, view_xview[0]+view_wview[0]/2, 384, 1, c_green, c_yellow, fa_center, fa_center, 4);
}

