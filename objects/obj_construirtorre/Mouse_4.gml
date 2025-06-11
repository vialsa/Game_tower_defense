// Verifica se clicou na torre raquete
if (mouse_x > x + 20 && mouse_x < x + 52 && mouse_y > y + 10 && mouse_y < y + 42) {
    global.torre_selecionada = obj_torreraquete_c;
    instance_destroy(); // Fecha o menu
}

// Verifica se clicou na torre spray
if (mouse_x > x + 70 && mouse_x < x + 102 && mouse_y > y + 10 && mouse_y < y + 42) {
    global.torre_selecionada = obj_torrespray_c;
    instance_destroy(); // Fecha o menu
}