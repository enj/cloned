draw_text(470,20,string(30-step/30));
if(declared_winner) {
    draw_set_halign(fa_center);
    draw_set_valign(fa_center);
    draw_text_transformed(view_xview[0]+view_wview[0]/2-4, 384, winner_message, 3, 3, 0);
    draw_text_transformed(view_xview[0]+view_wview[0]/2+4, 384, winner_message, 3, 3, 0);
    draw_text_transformed(view_xview[0]+view_wview[0]/2-4, 380, winner_message, 3, 3, 0);
    draw_text_transformed(view_xview[0]+view_wview[0]/2+4, 380, winner_message, 3, 3, 0);
    draw_text_transformed(view_xview[0]+view_wview[0]/2-4, 388, winner_message, 3, 3, 0);
    draw_text_transformed(view_xview[0]+view_wview[0]/2+4, 388, winner_message, 3, 3, 0);
    draw_text_transformed_color(view_xview[0]+view_wview[0]/2, 384, winner_message, 3, 3, 0, c_green, c_yellow, c_green, c_yellow, 1);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}

