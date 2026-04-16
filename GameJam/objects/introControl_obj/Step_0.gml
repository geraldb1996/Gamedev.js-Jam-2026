// Handle Smooth Cinematic Zoom-In
if (is_zooming) {
    // Slowly decrease zoom_level factor (e.g. from 1.0 to 0.9)
    zoom_level -= zoom_speed;
    
    // Clamp to prevent infinite zoom
    if (zoom_level < 0.85) {
        zoom_level = 0.85;
        is_zooming = false; // Stop zooming once target reached
        
        // Switch background and trigger zoom out
        layer_background_sprite(layer_background_get_id(layer_get_id("Background")), catseeing_spr);
        is_zooming_out = true;
    }
    
    // Calculate new size based on original room dimensions
    var _w = room_width * zoom_level;
    var _h = room_height * zoom_level;
    
    // Calculate centered position to keep the zoom focused on the middle
    var _x = (room_width - _w) / 2;
    var _y = (room_height - _h) / 2;
    
    // Apply changes to the main camera
    camera_set_view_size(view_camera[0], _w, _h);
    camera_set_view_pos(view_camera[0], _x, _y);
}

// Handle Zoom-Out with catseeing_spr background
if (is_zooming_out) {
    zoom_level += zoom_speed;
    
    // Clamp once back to original scale
    if (zoom_level > 1.0) {
        zoom_level = 1.0;
        is_zooming_out = false; // Sequence complete
    }
    
    var _w = room_width * zoom_level;
    var _h = room_height * zoom_level;
    var _x = (room_width - _w) / 2;
    var _y = (room_height - _h) / 2;
    
    camera_set_view_size(view_camera[0], _w, _h);
    camera_set_view_pos(view_camera[0], _x, _y);
}
