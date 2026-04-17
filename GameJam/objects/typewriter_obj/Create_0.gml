// typewriter_obj Create Event
text_full = "This is shakespeare, alo :3";
text_current = "";
char_index = 0;
text_speed = 0.5; // characters per frame
done_callback = undefined; 
is_done = false;

// Drawing properties
font = -1;
color = c_black;
halign = fa_middle;
valign = fa_center;

// Optional: allow skipping
allow_skip = true;

// Padding for the textbox
box_padding_x = 64;
box_padding_y = 64;

// Resize the sprite to fit the full text
refresh_size = function() {
    draw_set_font(font);
    var _txt_w = string_width(text_full);
    var _txt_h = string_height(text_full);

    var _spr_w = sprite_get_width(sprite_index);
    var _spr_h = sprite_get_height(sprite_index);

    if (_spr_w > 0 && _spr_h > 0) {
        image_xscale = (_txt_w + box_padding_x * 2) / _spr_w;
        image_yscale = (_txt_h + box_padding_y * 2) / _spr_h;
    }
}

refresh_size();

