// If a custom launch_action was assigned (e.g. by popup_obj), use it.
// Otherwise fall through to the default main-menu behaviour.
if (variable_instance_exists(id, "launch_action") && is_method(launch_action)) {
    launch_action();
    exit;
}

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