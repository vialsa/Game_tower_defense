// obj_gameover - Evento Draw

// --- Desenhar o Fundo Escuro Semi-Transparente ---
draw_set_alpha(fade_alpha); // Usa o alpha que está mudando
draw_set_color(c_black);
draw_rectangle(0, 0, camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]), false);
draw_set_alpha(1); // Resetar alpha para não afetar outros desenhos

// --- Desenhar os Botões ---
draw_set_font(fnt_padrao); // Se você tiver uma fonte personalizada, defina aqui
draw_set_color(c_white);

// Botão RECOMEÇAR
draw_rectangle(btn_restart_x, btn_restart_y, btn_restart_x + button_width, btn_restart_y + button_height, false); // AGORA USA button_width e button_height
draw_set_color(c_black); // Cor do texto
draw_text(btn_restart_x + (button_width / 2), btn_restart_y + (button_height / 2), "Reiniciar");

// Botão MENU
draw_set_color(c_white); // Cor do botão
draw_rectangle(btn_menu_x, btn_menu_y, btn_menu_x + button_width, btn_menu_y + button_height, false); // AGORA USA button_width e button_height
draw_set_color(c_black); // Cor do texto
draw_text(btn_menu_x + (button_width / 2), btn_menu_y + (button_height / 2), "Menu");

// Resetar alinhamento e cor para não afetar outros desenhos
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);