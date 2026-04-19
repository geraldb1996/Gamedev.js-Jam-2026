// 1. Update Timer
intro_timer += 1 / game_get_speed(gamespeed_fps);

// 2. Check Background + Zoom Schedule
for (var i = 0; i < array_length(bg_schedule); i++) {
    var _event = bg_schedule[i];
    if (!_event.done && intro_timer >= _event.time) {
        change_background(_event.spr);
        zoom_dir = _event.zoom_dir; // Flip zoom direction
        
        // Update typewriter text
        with (typewriter_obj) {
            set_text(_event.text);
        }
        
        _event.done = true;
    }
}

// 3. Apply Zoom based on current direction
if (zoom_dir == -1) {
    // Zoom In
    zoom_level -= zoom_speed;
    if (zoom_level < 0.85) zoom_level = 0.85;
} 
else {
    // Zoom Out
    zoom_level += zoom_speed;
    if (zoom_level > 1.0) zoom_level = 1.0;
}

// 4. Apply Camera
var _w = room_width  * zoom_level;
var _h = room_height * zoom_level;
var _x = (room_width  - _w) / 2;
var _y = (room_height - _h) / 2;

camera_set_view_size(view_camera[0], _w, _h);
camera_set_view_pos(view_camera[0], _x, _y);

// 5. Fade to Black Logic
if (intro_timer >= start_fade_time) {
    is_fading = true;
}

if (is_fading) {
    fade_alpha += fade_speed;
    if (fade_alpha >= 1) {
        fade_alpha = 1;
        // Optional: room_goto(NextRoom);
    }
}
