// Start the mouse spawning cycle
// Hidden time varies between 1 and 2 seconds
var _hidden_time = room_speed * random_range(1, 3);
alarm_set(0, _hidden_time);
points = 0;
max_points = 100;
finished = false;

barDecrease = room_speed * 1;
alarm_set(1, barDecrease);