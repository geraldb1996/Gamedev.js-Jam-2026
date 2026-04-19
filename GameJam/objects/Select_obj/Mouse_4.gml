/// @description Open level popup based on current image_index
if (instance_exists(popup_obj)) exit; // Don't stack popups

var _lvl = image_index;
var _msg = "";

switch (_lvl) {
    case 0: _msg = "House Invasion\n\nGet a mouse inside the house so the human\nwill notice, once this metal cat is not\nable to catch it, they will throw it\nback to where it belongs";
	room_goto(Level1)
	break;
    case 1: _msg = "Dirty Tactics\n\nSo nasty but necessary, while I use\nthis method to keep away intruders,\nthe human seems to not be very happy\nif I mark his bed, will try to mark\nthe bed and blame the fault on the\nmetal cat"; break;
    case 2: _msg = "Drowning the metal thing\n\nIt does seems like the same texture of\nthat old toaster I throw in the bath,\nthe human was furious, but the toaster\nnever worked again, probably works\nwith this metal cat"; break;
    default: _msg = "Unknown level."; break;
}

// Create popup and pass context before Create event fires
var _popup = instance_create_layer(0, 0, "Instances", popup_obj);
_popup.popup_message = _msg;
_popup.popup_level   = _lvl;

if (!audio_is_playing(click_snd)) {
    audio_play_sound(click_snd, 10, false);
}
