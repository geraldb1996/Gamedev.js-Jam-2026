// Left Click - Show popup if not already open
if (!instance_exists(popup_obj)) {
    var _inst = instance_create_layer(0, 0, "Instances", popup_obj);
	_inst.popup_message = message;
}

if(!audio_is_playing(click_snd))
{
	audio_play_sound(click_snd,10,false);
}