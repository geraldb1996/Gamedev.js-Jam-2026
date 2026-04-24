if (instance_exists(endScene_popup_obj)) {
    image_index = 0;
    exit;
}

image_index = 1;
if (!audio_is_playing(scratch_snd)){audio_play_sound(scratch_snd, 10, false);}