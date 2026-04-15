// Destroy the popup and this close button
switch(room){
	case Main:
		if (instance_exists(popup_obj)) {instance_destroy(popup_obj);} instance_destroy(self);
		break;
	
	case Lvl_Selection:
		room_goto(Main);
		break;
}