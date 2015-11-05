// Assumes this is player character
var x1 = 10;
var bar_direction = 0; // 0 = left, 1 = right, 2 = top, 3 = bottom

// Fix assumption if needed
var width = 250;
if (opponent == fighter_obj[0]) {
    bar_direction = 1;
//    x1 = display_get_gui_width() - 50 - width - x1; //TODO this needs work
    var scale = (window_get_height() / view_hview[0]);
    x1 = view_wview[0]*scale-width-x1; //This seems to work
}

// Health bar vars
var y1 = 40;
var height = 20;
var bg_color = c_white;
var dead_color = c_purple;
var full_color = c_yellow;
var show_bg = true;
var show_border = true;

// Calculated vars
var x2 = x1 + width;
var y2 = y1 + height;
var amount = (mp / max_mp) * 100;

draw_healthbar(x1, y1, x2, y2, amount, bg_color, dead_color, full_color, bar_direction, show_bg, show_border);
