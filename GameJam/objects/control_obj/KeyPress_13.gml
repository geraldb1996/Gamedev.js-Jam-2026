/// @description Debug Room Selector 
var _rooms = [
    "Main", 
    "Intro1", 
    "Lvl_Selection", 
    "Level1", 
    "Level1_a", 
    "Level1_b", 
    "Level1_c", 
    "pendingLevel"
];

var _prompt = "DEBUG MENU: Select Room\n\n";
for (var i = 0; i < array_length(_rooms); i++) {
    _prompt += string(i) + ": " + _rooms[i] + "\n";
}
_prompt += "\nType the index of the room you want to go:";

var _choice = get_integer(_prompt, -1);

if (_choice >= 0 && _choice < array_length(_rooms)) {
    var _room_target = asset_get_index(_rooms[_choice]);
    if (room_exists(_room_target)) {
        room_goto(_room_target);
    }
}
