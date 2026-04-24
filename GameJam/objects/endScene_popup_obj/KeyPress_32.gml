switch(room)
{
	case Level1_c:
		control_obj.plan_level1 = true;
		break;
		
	case Level2_a:
		room_restart();
		break;
		
	default:
		room_goto(Lvl_Selection);
		break;
}

