if (control_obj.first_play)
{
	control_obj.first_play = false;
	room_goto(Intro1);	
}
else
{
	room_goto(Lvl_Selection);
}