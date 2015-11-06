// Assumes this is player character
var x1 = 10;
var bar_direction = 0; // 0 = left, 1 = right, 2 = top, 3 = bottom

// Fix assumption if needed
var width = 400;

var name_pos = width+x1;
var halign = fa_right;

if (opponent == fighter_obj[0]) {
    bar_direction = 1;
//    x1 = display_get_gui_width() - 50 - width - x1; //TODO this needs work
    var scale = (window_get_height() / view_hview[0]);
    x1 = view_wview[0]*scale-width-x1; //This seems to work
    halign = fa_left;
    name_pos = x1;
}

// Health bar vars
var y1 = 10;
var height = 25;
var bg_color = c_black;
var dead_color = c_red;
var full_color = c_green;
var show_bg = true;
var show_border = true;
//var max_hp = 100; //TODO move elsewhere

// Calculated vars
var x2 = x1 + width;
var y2 = y1 + height;
var amount = (hp / max_hp) * 100;

draw_healthbar(x1, y1, x2, y2, amount, bg_color, dead_color, full_color, bar_direction, show_bg, show_border);

script_draw_stroked_text(fighter_name, name_pos, y2-5, .3, c_yellow, c_orange, halign, fa_top, 2);


if(global.training_mode)draw_text(x1, y1, string(global.wins[player]));
