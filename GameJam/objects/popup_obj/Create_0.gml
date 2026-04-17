// Center popup on screen
x = room_width  / 2;
y = room_height / 2;

// Render on top of everything
depth = -9999;

// popup_message and popup_level should be set by whoever creates this instance
if (!variable_instance_exists(id, "popup_message")) popup_message = "No message set.";
if (!variable_instance_exists(id, "popup_level"))   popup_level   = -1;

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

// Spawn the play button centred below the popup text area
var _self_id = id; // capture for the closure
var _lvl = popup_level;

play_btn_inst = instance_create_layer(x, y + _hh - 48, "Instances", play_btn);
play_btn_inst.depth = depth - 1;
play_btn_inst.target_level = popup_level; // store on instance so the closure can read it via self

// Override the play_btn alarm action with a level-specific one
play_btn_inst.launch_action = method(play_btn_inst, function() {
    // self = play_btn_inst here, so target_level is accessible
    var _lvl = target_level;
    with (popup_obj) {
        instance_destroy(close_btn);
        instance_destroy(id);
    }
    switch (_lvl) {
        case 0: show_message("Going to Level 1"); break;
        case 1: show_message("Going to Level 2"); break;
        case 2: show_message("Going to Level 3"); break;
        default: show_message("Unknown level");   break;
    }
});
