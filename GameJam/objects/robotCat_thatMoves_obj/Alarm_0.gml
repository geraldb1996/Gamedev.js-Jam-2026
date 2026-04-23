/// @description Choose random behavior
state = irandom(2);

switch (state) {
    case 0: // Idle
        sprite_index = catrobot_idle_spr;
        break;
        
    case 1: // Left
        sprite_index = catrobot_walk_spr;
        image_xscale = 0.7117117;; 
        break;
        
    case 2: // Right
        sprite_index = catrobot_walk_spr;
        image_xscale = -0.7117117;;
        break;
}

// Reset alarm for next change (1.5 to 4 seconds)
alarm_set(0, room_speed * random_range(1.5, 4));
