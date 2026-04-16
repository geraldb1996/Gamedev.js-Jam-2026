// typewriter_obj Step Event
if (!is_done) {
    // Check for skip
    if (allow_skip && (mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter))) {
        char_index = string_length(text_full);
        text_current = text_full;
        is_done = true;
        
        if (done_callback != undefined) {
            if (is_method(done_callback)) {
                done_callback();
            } else if (script_exists(done_callback)) {
                script_execute(done_callback);
            }
        }
        exit;
    }

    // Reveal text
    char_index += text_speed;
    text_current = string_copy(text_full, 1, floor(char_index));
    
    // Check if finished
    if (char_index >= string_length(text_full)) {
        char_index = string_length(text_full);
        text_current = text_full;
        is_done = true;
        
        // Execute callback if provided
        if (done_callback != undefined) {
            if (is_method(done_callback)) {
                done_callback();
            } else if (script_exists(done_callback)) {
                script_execute(done_callback);
            }
        }
    }
}
