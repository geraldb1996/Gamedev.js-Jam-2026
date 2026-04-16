// Background and Logic Setup
bg_layer = layer_get_id("Background");
bg_element = layer_background_get_id(bg_layer);

// Zoom properties
zoom_level  = 1.0;
zoom_target = 0.85;   // Zoom In target
zoom_speed  = 0.0002; // Slow cinematic speed

// Timing and Schedule
intro_timer = 0;

// Each event: time in seconds, sprite to display, zoom direction (-1 = in, 1 = out), done flag
bg_schedule = [
    {time: 12, spr: catseeing_spr, zoom_dir:  1, done: false}, // 12s → Zoom Out
    {time: 26, spr: petubox_spr,   zoom_dir: -1, done: false}, // 26s → Zoom In
    {time: 40, spr: robot_spr,     zoom_dir:  1, done: false}, // 40s → Zoom Out
    {time: 47, spr: catseeing_spr, zoom_dir: -1, done: false}  // 47s → Zoom In
];

// Current direction: -1 = zooming in, 1 = zooming out
zoom_dir = -1; // Start zooming in

// Ensure view is active
view_enabled    = true;
view_visible[0] = true;

change_background = function(_sprite) {
    var _layer = layer_get_id("Background");
    var _elem  = layer_background_get_id(_layer);
    if (_elem != -1) {
        layer_background_sprite(_elem, _sprite);
    }
}
