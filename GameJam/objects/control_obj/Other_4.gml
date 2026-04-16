switch (room)
{
	case Main:
	case Lvl_Selection:
		audio_stop_all();
		audio_play_sound(main_snd,10,true);
		layer_set_visible("typewritterUI", false);
		break;
		
	case Intro1:
		audio_stop_all();
		audio_play_sound(intro_snd,10,false);
		layer_set_visible("typewritterUI", true);
		break;

}