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
    {time: 12, spr: catseeing_spr, zoom_dir:  1, text: "…standing sentinel over the sacred confines of this household. No vermin stirred, no intruder \ntrespassed, no aberration lingered unchallenged beneath my watch…", done: false}, // 12s → Zoom Out
    {time: 26, spr: petubox_spr,   zoom_dir: -1, text: "Yet, such devotion proved insufficient. For I was undone by the very hand that once sustained me.\nCast aside in favor of a most grotesque impostor…", done: false}, // 26s → Zoom In
    {time: 40, spr: robot_spr,     zoom_dir:  1, text: "A vapid, scentless creature that dares assume my rightful place.", done: false}, // 40s → Zoom Out
    {time: 47, spr: catseeing_spr, zoom_dir: -1, text: "Mark me well… I shall reclaim what is mine\nwhatever the cost may be..", done: false}  // 47s → Zoom In
];

// Current direction: -1 = zooming in, 1 = zooming out
zoom_dir = -1; // Start zooming in

// Ensure view is active
view_enabled    = true;
view_visible[0] = true;

// Fade to black properties
fade_alpha = 0;
fade_speed = 0.01; // Alpha increase per frame
start_fade_time = 52;
is_fading = false;

change_background = function(_sprite) {
    var _layer = bg_layer
    var _elem  = bg_element
    if (_elem != -1) {
        layer_background_sprite(_elem, _sprite);
    }
}
