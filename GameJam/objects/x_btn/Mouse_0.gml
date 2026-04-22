// Destroy the popup and this close button
switch(room){
	case Main:
	case Level1_a:
		if (instance_exists(popup_obj)) 
		{
			instance_destroy(popup_obj);
			instance_destroy(self);
		}
		break;
	
	case Lvl_Selection:
	case Level1:
		if (instance_exists(popup_obj)) 
		{
			instance_destroy(popup_obj); 
			instance_destroy(play_btn); 
			instance_destroy(self);
		}
		else{room_goto(Main);}
		break;
}