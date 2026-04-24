// Initial state
sprite_index = window_spr;
image_index = 0;
image_speed = 0;

state = "free";
timer = irandom_range(60, 150); // Wait 2 to 5 seconds (assuming 60fps)
