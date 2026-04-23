switch (room)
{
	case Level1:
		room_goto(Level1_a);
		break;
		
	case Level2:
		room_goto(Level2_a);
		break;
		
	case Level2_a:
		room_goto(Level2_b);
		break;
}