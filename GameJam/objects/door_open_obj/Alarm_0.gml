var seconds = room_speed * 1;
alarm_set(0, seconds);

if (points >= 0)
{
	points -= 1;
}

if (points >= 100)
{
	room_goto(Level2_b);
}