// If a custom launch_action was assigned (e.g. by popup_obj), use it.
// Otherwise fall through to the default main-menu behaviour.
if (variable_instance_exists(id, "launch_action") && is_method(launch_action)) {
    launch_action();
    exit;
}


switch(room)
{
	case Main:
		// Default: main menu flow
		if (control_obj.first_play)
		{
			control_obj.first_play = false;
			room_goto(Intro1);	
		}
	else
		{
			room_goto(Lvl_Selection);
		}
		break;
	case Lvl_Selection:
		// Cleanup popup if it exists (including its close button)
		if (instance_exists(popup_obj)) 
		{
			with (popup_obj) 
			{
				if (variable_instance_exists(id, "close_btn")) instance_destroy(close_btn);
				instance_destroy(id);
			}
		}
		
		// Transition to the selected level
		switch(Select_obj.image_index)
		{
			case 0: 
			room_goto(Level1); 
			break;
			
			case 1:
			room_goto(Level2);
			break; 
			
			case 2:
			room_goto(pendingLevel); 
			break;
			
			default: show_message("Unknown level selected"); break;
		}
		break;
		
}