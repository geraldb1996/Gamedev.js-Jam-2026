var miliseconds = room_speed * 0.3;

if (!audio_is_playing(mouse_snd)){audio_play_sound(mouse_snd, 10, false);}
alarm_set(0, miliseconds);