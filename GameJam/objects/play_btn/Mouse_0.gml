if(!audio_is_playing(click_snd))
{
	audio_play_sound(click_snd,10,false);
}

buttonAction = room_speed * 0.2;
alarm_set(0,  buttonAction);