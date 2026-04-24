// Random logic for watching state
if (state == "free") {
    image_index = 0;
    timer--;
    if (timer <= 0) {
        state = "transition";
        image_index = 0;
    }
} else if (state == "transition") {
    // Animate from 0 to 5
    image_index += 1; 
    if (image_index >= 5) {
        image_index = 5;
        state = "watched";
        timer = irandom_range(90, 180); // Stay watched for 1.5 to 3 seconds
    }
} else if (state == "watched") {
    image_index = 5;
    timer--;
    if (timer <= 0) {
        state = "free";
        timer = irandom_range(120, 300); // Back to free state for 2 to 5 seconds
    }
}

// Detection logic: if player moves while watched, they lose
if (image_index >= 5) { 
    var caught = false;
    
    // Check for player movement if player exists
    if (instance_exists(player_obj) || instance_exists(player_with_mouse_obj)) {
        var moving = keyboard_check(vk_left) || keyboard_check(vk_right) || keyboard_check(ord("A")) || keyboard_check(ord("D"));
        if (moving) caught = true;
    } 
    // Otherwise check for paw clicking
    else if (instance_exists(paw_obj)) {
        if (mouse_check_button(mb_left)) caught = true;
    }

    if (caught) {
        // Player lost - show popup instead of restarting immediately
        if (!instance_exists(endScene_popup_obj)) {
            var _inst = instance_create_depth(room_width / 2, room_height / 2, -10000, endScene_popup_obj);
            _inst.popup_message = "CAUGHT!\n\nYou were spotted by the human.\nStay still when it's watching!\n\nPress SPACE to try again";
        }
    }
}
