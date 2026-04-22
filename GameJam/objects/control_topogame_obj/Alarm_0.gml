// Spawn a mouse at a random mousehole
if (instance_exists(mousehole_obj)) {
    var _count = instance_number(mousehole_obj);
    var _index = irandom(_count - 1);
    var _hole = instance_find(mousehole_obj, _index);
    
    // Create the mouse at the chosen hole's position
    var _mouse = instance_create_layer(_hole.x, _hole.y, "Instances", mouse_obj);
    
    spawnTime = random_range(0.2, 1);
    _mouse.alarm[0] = room_speed * spawnTime; 
}

// Set alarm for the next mouse appearance (1 to 2 seconds hidden time)
var _next_spawn = room_speed * random_range(2, 4);
alarm_set(0, _next_spawn);
