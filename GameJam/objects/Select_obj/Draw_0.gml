/// @description Draw level selection and tried overlay
draw_self();

var _is_tried = false;
if (image_index == 0 && control_obj.plan_level1) _is_tried = true;
if (image_index == 1 && control_obj.plan_level2) _is_tried = true;
if (image_index == 2 && control_obj.plan_level3) _is_tried = true;

if (_is_tried) {
    draw_sprite(lvl_tried_spr, 0, x, y);
}
