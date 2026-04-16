// Background and Logic Setup
bg_layer = layer_get_id("Background");
bg_element = layer_background_get_id(bg_layer);

// Prepare backgrounds for later use
bg_list = [house_spr, catseeing_spr];

// Zoom properties
zoom_level = 1.0;
zoom_speed = 0.0002; // Very slow cinematic zoom
is_zooming = true;
zoom_state = 0; // 0: in, 1: switch/out, 2: done
is_zooming_out = false;


// Ensure view is active for this room
view_enabled = true;
view_visible[0] = true;


change_background = function(_sprite) {
    // Re-fetch the element each call to avoid stale references
    var _layer = layer_get_id("Background");
    var _elem  = layer_background_get_id(_layer);
    show_debug_message("change_background → layer=" + string(_layer) + " elem=" + string(_elem) + " sprite=" + string(_sprite));
    if (_elem != -1) {
        layer_background_sprite(_elem, _sprite);
    }
}

