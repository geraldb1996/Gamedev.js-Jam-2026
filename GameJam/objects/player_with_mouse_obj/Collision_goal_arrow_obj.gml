switch (room)
{
	case Level1_b:
		room_goto(Level1_c);
		break;
		
	case Level1_c:
		if (scene == 0)
		{
					idleAnim = playerIDLE_spr;
					walkAnim = playerWALK_spr;
					instance_create_depth(goal_arrow_obj.x, player_with_mouse_obj.y, -10, mousedrop_obj);
					instance_destroy(goal_arrow_obj);
					audio_play_sound(mouse_snd, 10, false);
					instance_create_depth(192, 608, -10, goal_arrow_obj);
					scene = 1;
		}
		else 
		{
				seconds = room_speed * 2;
				instance_destroy(goal_arrow_obj);
				alarm_set(0, seconds);
		}
		break;

}