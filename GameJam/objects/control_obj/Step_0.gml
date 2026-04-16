switch (room)
{
	case Intro1:
		if (!audio_is_playing(intro_snd)) {room_goto(Lvl_Selection);}
		break;

}