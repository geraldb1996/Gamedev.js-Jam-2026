switch (room)
{
	case Level1:
		room_goto(Level1_a);
		break;
		
	case Level2:
		room_goto(Level2_a);
		break;
		
	case Level2_a:
		level2control_obj.second_phase = true;
		instance_destroy(goal_arrow_obj);
		instance_create_depth(mouse_x,mouse_y,-10000,paw_obj);
		instance_destroy();
		break;
}