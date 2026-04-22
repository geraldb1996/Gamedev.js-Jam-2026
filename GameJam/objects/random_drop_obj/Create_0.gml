myDrop = (irandom_range(0,13));
message = "default text for drop";

image_speed = 0;
image_index = myDrop;

switch (myDrop)
{
	case 0:
	message="An old Bone\n\nSeems to be a piece of bone,\nNothing interesting.";
	break;
	
	case 1:
	message="Broken Calculator\n\nInteresting device, but seems to be broken,\nmaybe useful";
	break
	
	case 2:
	message="Human Money\n\nA non valuable piece of metal,\njust like that intruder. not useful"
	break;
	
	case 3:
	message="An Eraser\n\nProbably useful, maybe one of the\nsmall human dropped it.";
	break; 
	
	case 4:
	message="Fish bones\n\nLooks yummy, will save it for later,\nafter I get my revenge";
	break;
	
	case 5:
	message="Precious Jewelry\n\nThis thing looks good, however,\nit is not useful for a cat";
	break;
	
	case 6:
	message="Old Key\n\nI had seen the humans use this to enter the house,\nwhat a waste of time";
	break;
	
	case 7:
	message="A leaf\n\nNothing unusual around here,\nI will play with it later";
	break;
	
	case 8:
	message="An Old Can\n\nSometimes there is delicious food inside, but\nthis one seems to be empty";
	break;
	
	case 9:
	message="A Piece of Paper\n\nA very interesting note,\nif only I know how to read it";
	break;
	
	case 10:
	message="A Pen\n\nI have a pen, I have an apple\nUh! Apple pen...";
	break;
	
	case 11:
	message="A Poop\n\nWait... this is not mine... iuks";
	break;
	
	case 12:
	message="A Red Ball\n\nOh I remember this one, just an old ball\nI used to play with, boring";
	break;
	
	case 13:
	message="Just a Stone\n\nNothing interesting on this one\nthere are hundreds like this out there";
	break;
}

// Create popup for the drop
var _popup = instance_create_layer(0, 0, "Instances", popup_obj);
_popup.popup_message = message;
_popup.item_sprite   = sprite_index;
_popup.item_index    = myDrop;

if (!audio_is_playing(click_snd)) {
    audio_play_sound(click_snd, 10, false);
}

seconds = room_speed * 0.3;
alarm_set(0, seconds);