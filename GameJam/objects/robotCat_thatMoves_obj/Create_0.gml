/// @description Initialize decorative cat logic
move_speed = 1.5;
image_xscale = 0.7117117;
image_yscale = 0.7155555;
state = 0; // 0: Idle, 1: Walk Left, 2: Walk Right

// Set first random action timer
alarm_set(0, room_speed * random_range(1, 3));
