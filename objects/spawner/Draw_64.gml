draw_set_color(make_color_rgb(25, 80, 80));
draw_rectangle(0, 0, display_get_gui_width(), 40, false);

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text(55,10,"VIDA: " + string(global.vida));
draw_text(260,10,"MOEDAS: " + string(global.moeda));
draw_text(660,10,"WAVE: " + string(global.level));

draw_sprite_ext(spt_iconvida, 0, 10, 7, 0.1, 0.1, 0, c_white, 1);
draw_sprite_ext(spt_iconmoeda, 0, 220, 7, 0.1, 0.1, 0, c_white, 1);
draw_sprite_ext(spt_iconwave, 0, 610, 1, 0.1, 0.1, 0, c_white, 1);
draw_sprite_ext(spt_construir, 0, btn_construir_x, btn_construir_y, 0.08, 0.08, 0, c_white, 1);


draw_set_color(c_white);

if (global.game_over) {
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_red);
    draw_text(room_width / 2, room_height / 2, "GAME OVER");
}


