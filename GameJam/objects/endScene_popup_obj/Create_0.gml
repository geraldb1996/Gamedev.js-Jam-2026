//


switch(room)
{
	case Level1_c:
		popup_message = "Uh Oh!\n\nWell... Seems like this impostor is a little\nbit more efficient than I expected\nI need to try a different way\n\nPress SPACE";
		break;
		
	case Level2_b:
		popup_message = "What a nightmare!!\n\n I was able to complete my mission, \nbut the human did not blamed the impostor\nInstead, they find ME guilty...\nI dont understand...\n\nPress SPACE";
		break;

}

// Center popup on screen
x = room_width  / 2;
y = room_height / 2;

// Render on top of everything
depth = -9999;



