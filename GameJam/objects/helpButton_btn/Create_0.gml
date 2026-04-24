message = "I need to identify where the mouse burrow is\nlocated, once you get them you need to go\nto the point and trap one of the mouses to\nget it inside the house, I know there were\nsome nearby.\n\nUse the paw to check different places, move\nthe cat with (left) (right) arrow or (A)\n(D) buttons";

switch(room)
{
	case Level1_a:
		message = "Trap the mouse by clicking on it,\nonce the bar  is full\nyou can move to the next step of the plan.";
		break;
		
	case Level1_b:
		message = "Take the mouse inside the house,\nI dont think that impostor knows what to do";
		break;
		
	case Level1_c:
		message = "Infiltration succesful, place the cat\nnear the metal creature";
		break;
		
	case Level2:
	case Level2_a:
	case Level2_b:
		message = "Get into the bedroom and leave\na big piece of karma on the bed.\nBe very careful to not be discovered\nby the human, so they can blame the impostor";
		break;
}