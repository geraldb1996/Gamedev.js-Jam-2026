// Configuration for the vertical bar
var _width = 32;
var _height = 300;
var _padding = 50;

// Position: Middle-Right of the screen
var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();

var _x1 = _padding;
var _y1 = (_gui_h / 2) - (_height / 2);
var _x2 = _x1 + _width;
var _y2 = _y1 + _height;

// 1. Draw background (Black)
draw_set_color(c_black);
draw_rectangle(_x1, _y1, _x2, _y2, false);

// 2. Draw filled area (Green)
// Calculate fill height based on points vs max_points
var _fill_percent = clamp(points / max_points, 0, 1);
var _fill_h = _height * _fill_percent;

draw_set_color(c_green);
draw_rectangle(_x1, _y2 - _fill_h, _x2, _y2, false);

// 3. Draw border (White)
draw_set_color(c_white);
draw_rectangle(_x1, _y1, _x2, _y2, true);

// 4. Handle goal completion
if (points >= max_points && !finished) {
    finished = true;
    room_goto(Level1_b);
}

// Reset drawing color
draw_set_color(c_white);