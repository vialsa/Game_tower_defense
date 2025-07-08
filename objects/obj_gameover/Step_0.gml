// Fazer o fundo escurecer gradualmente
if (fade_alpha < fade_target_alpha) {
    fade_alpha = min(fade_alpha + fade_speed, fade_target_alpha);
}

// Lógica de clique nos botões (apenas se o botão esquerdo for pressionado)
if (mouse_check_button_pressed(mb_left)) {
    var mx = device_mouse_x_to_gui(0); // Posição do mouse na GUI
    var my = device_mouse_y_to_gui(0); // Posição do mouse na GUI

    // Verifica clique no botão RECOMEÇAR
    if (mx >= btn_restart_x && mx <= btn_restart_x + button_width &&
        my >= btn_restart_y && my <= btn_restart_y + button_height) {
        
        // Clicou em RECOMEÇAR
        global.game_over = false;    // Reseta o estado
        global.game_pause = false;   // Reseta a pausa
        
        instance_destroy();          // <--- ADICIONE ESTA LINHA: Destroi esta instância de obj_gameover
        room_restart();              // Reinicia a room atual
    }
    // Verifica clique no botão MENU
    else if (mx >= btn_menu_x && mx <= btn_menu_x + button_width &&
             my >= btn_menu_y && my <= btn_menu_y + button_height) {
        
        // Clicou em MENU
        global.game_over = false;    // Reseta o estado
        global.game_pause = false;   // Reseta a pausa
        
        instance_destroy();          // <--- ADICIONE ESTA LINHA: Destroi esta instância de obj_gameover
        room_goto(rm_menu);          // Volta para a room do menu
    }
}