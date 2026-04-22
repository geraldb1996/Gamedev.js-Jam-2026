//Movement
if (keyboard_check(vk_left) || keyboard_check(ord("A")))
{
    x -= 2;
    image_xscale = abs(image_xscale);
    sprite_index = playerwmouseWALK_spr;
}
else if (keyboard_check(vk_right) || keyboard_check(ord("D")))
{
    x += 2;
    image_xscale = -abs(image_xscale);
    sprite_index = playerwmouseWALK_spr;
}
else
{
    sprite_index = playerwmouseIDLE_spr;
}