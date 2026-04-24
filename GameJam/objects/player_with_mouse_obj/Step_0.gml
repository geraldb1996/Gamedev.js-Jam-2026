//Movement
if (instance_exists(endScene_popup_obj)) {
    sprite_index = idleAnim;
    exit;
}

if (keyboard_check(vk_left) || keyboard_check(ord("A")))
{
    x -= 2;
    image_xscale = abs(image_xscale);
    sprite_index = walkAnim;
}
else if (keyboard_check(vk_right) || keyboard_check(ord("D")))
{
    x += 2;
    image_xscale = -abs(image_xscale);
    sprite_index = walkAnim;
}
else
{
    sprite_index = idleAnim;
}