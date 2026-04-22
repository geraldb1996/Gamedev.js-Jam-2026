// Draw semi-transparent dark overlay
draw_set_alpha(0.5);
draw_set_color(c_black);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);

// Draw popup background sprite centred on the object
draw_sprite(popup_spr, 0, x, y);

// Draw popup message text
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(-1);
draw_set_color(c_black);

var _hh = sprite_get_height(popup_spr) / 2;
draw_text(x, y - 24, popup_message); // nudge text up to leave room for play_btn or item

if (item_sprite != -1) {
    draw_sprite(item_sprite, item_index, x, y + _hh - 48);
}


// Reset defaults
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
