// Apply slow zoom in
zoom_level -= zoom_speed;
if (zoom_level < 0.9) zoom_level = 0.9; // Stop at 90% size

// Update the camera view
var _w = room_width  * zoom_level;
var _h = room_height * zoom_level;

// Center the zoom
var _x = (room_width  - _w) / 2;
var _y = (room_height - _h) / 2;

camera_set_view_size(view_camera[0], _w, _h);
camera_set_view_pos(view_camera[0], _x, _y);
