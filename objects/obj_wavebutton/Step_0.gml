if (mouse_check_button_pressed(mb_left)) {
    if (position_meeting(mouse_x, mouse_y, id)) {
        show_debug_message("Cliquei no botão!");
        with (spawner) {
            start_wave = true;
        }
    }
}