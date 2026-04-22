//Movement
if (keyboard_check(vk_left) || keyboard_check(ord("A")))
{
    x -= 1;
    image_xscale = abs(image_xscale);
    sprite_index = playerWALK_spr;
}
else if (keyboard_check(vk_right) || keyboard_check(ord("D")))
{
    x += 1;
    image_xscale = -abs(image_xscale);
    sprite_index = playerWALK_spr;
}
else
{
    sprite_index = playerIDLE_spr;
}