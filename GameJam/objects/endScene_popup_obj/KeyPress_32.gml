switch(room)
{
	case Level1_c:
		control_obj.plan_level1 = true;
		room_goto(Lvl_Selection);
		break;
		
	case Level2_a:
		room_restart();
		break;
	
	case Level2_b:
		control_obj.plan_level2 = true;
		room_goto(Lvl_Selection);
		break;
	
	default:
		room_goto(Lvl_Selection);
		break;
}

