if (global.vida <= 0) {
    global.game_over = true;
}

if (mouse_check_button_pressed(mb_left)) {
    var mx = device_mouse_x(0);
    var my = device_mouse_y(0);

    var largura = sprite_get_width(spt_construir) * 0.1;
    var altura = sprite_get_height(spt_construir) * 0.1;

    if (mx > btn_construir_x && mx < btn_construir_x + largura &&
        my > btn_construir_y && my < btn_construir_y + altura) {

        if (!global.menu_construir_aberto) {
            // AGORA CRIA O obj_construirbtn DIRETAMENTE
            instance_create_layer(btn_construir_x - 40, btn_construir_y + 50, "GUI", obj_construirtorre);
            global.menu_construir_aberto = true;
        }
    }
}