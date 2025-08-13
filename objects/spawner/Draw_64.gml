// Fundo translúcido da HUD (mais visível e mais alto)
draw_set_alpha(0.6);
draw_set_color(c_black);
draw_rectangle(0, 0, display_get_gui_width(), 48, false); // Altura aumentada
draw_set_alpha(1);

// Configurações de texto
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);



// Fonte (aplique se já tiver criado uma com Pixel Emulator)
draw_set_font(fnt_pixelM);
// Textos (posições ajustadas pra nova altura)
draw_text(55, 10, string(global.vida));
draw_text(260, 10, string(global.moeda));
draw_text(660, 10, string(global.level));

// Ícones (tamanho um pouco maior e alinhados com a nova altura da barra)
draw_sprite_ext(spt_iconvida, 0, 16, 10, 0.7, 0.7, 0, c_white, 1);
draw_sprite_ext(spt_iconmoeda, 0, 220, 10, 0.7, 0.7, 0, c_white, 1);
draw_sprite_ext(spt_iconwave, 0, 610, 10, 0.7, 0.7, 0, c_white, 1);

// Botão de construir (mantido igual)
draw_sprite_ext(spt_construir, 0, btn_construir_x, btn_construir_y, 0.08, 0.08, 0, c_white, 1);

// Tela de Game Over
if (global.game_over) {
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_red);
    draw_text(room_width / 2, room_height / 2, "GAME OVER");
}
