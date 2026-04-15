// Center popup on screen
x = room_width  / 2;
y = room_height / 2;

// Render on top of everything
depth = -9999;

// Spawn the close (X) button, anchored to top-right of popup sprite
var _hw = sprite_get_width(popup_spr)  / 2;
var _hh = sprite_get_height(popup_spr) / 2;

close_btn = instance_create_layer(
    x + _hw - 32,
    y - _hh + 32,
    "Instances",
    x_btn
);
close_btn.depth = depth - 1;
