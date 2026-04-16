// typewriter_obj Draw Event
draw_set_font(font);
draw_set_color(color);
draw_set_halign(halign);
draw_set_valign(valign);

draw_self();
draw_text(x, y, text_current);

// Reset defaults to avoid affecting other draw calls
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_set_color(c_black);
draw_set_font(-1);
