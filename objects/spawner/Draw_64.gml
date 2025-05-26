draw_set_color(make_color_rgb(25, 80, 80));
draw_rectangle(0, 0, display_get_gui_width(), 40, false);

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text(10,10,"VIDA: " + string(global.vida));
draw_text(260,10,"MOEDAS: " + string(global.moeda));
draw_text(660,10,"WAVE: " + string(global.level));


draw_set_color(c_white);

if (global.game_over) {
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_red);
    draw_text(room_width / 2, room_height / 2, "GAME OVER");
}