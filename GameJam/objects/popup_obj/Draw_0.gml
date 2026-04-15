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
draw_set_font(-1); // use default font - replace with your custom font if desired
draw_set_color(c_white);
draw_text(x, y, "This game was developed by GeraldGlitch for\nGamedev.js Jam 2026, Source code on Github\nFeel free to take a look\nhttps://github.com/geraldb1996/Gamedev.js-Jam-2026");

// Reset defaults
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
