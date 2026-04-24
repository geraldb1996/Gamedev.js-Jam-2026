// Destroy the popup and this close button
switch(room){
	case Main:
	case Level1_a:
	case Level1_b:
	case Level1_c:
	case Level2:
	case Level2_a:
	case Level2_b:
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