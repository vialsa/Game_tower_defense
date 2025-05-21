draw_set_color(c_black);
draw_text(10,10,"VIDA: " + string(global.vida));
draw_text(100,10,"NIVEL: " + string(global.level));
draw_text(10,30,"MOEDAS: " + string(global.moeda));

draw_set_color(c_white);

if (global.game_over) {
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_red);
    draw_text(room_width / 2, room_height / 2, "GAME OVER");
}