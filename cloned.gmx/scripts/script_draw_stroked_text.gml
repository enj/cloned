var text = argument0;
var x_pos = argument1;
var y_pos = argument2;
var scale = argument3;
var color1 = argument4;
var color2 = argument5;
var halign = argument6;
var valign = argument7;
var stroke_width = argument8;

draw_set_halign(halign);
draw_set_valign(valign);
draw_set_font(font_winner);
draw_text_transformed(x_pos-stroke_width, y_pos, text, scale, scale, 0);
draw_text_transformed(x_pos+stroke_width, y_pos, text, scale, scale, 0);
draw_text_transformed(x_pos-stroke_width, y_pos-stroke_width, text, scale, scale, 0);
draw_text_transformed(x_pos+stroke_width, y_pos-stroke_width, text, scale, scale, 0);
draw_text_transformed(x_pos-stroke_width, y_pos+stroke_width, text, scale, scale, 0);
draw_text_transformed(x_pos+stroke_width, y_pos+stroke_width, text, scale, scale, 0);
draw_text_transformed_color(x_pos, y_pos, text, scale, scale, 0, color1, color2, color1, color2, 1);
draw_set_font(-1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

