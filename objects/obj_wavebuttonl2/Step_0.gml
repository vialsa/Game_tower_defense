if (mouse_check_button_pressed(mb_left)) {
    if (position_meeting(mouse_x, mouse_y, id)) {
        show_debug_message("Cliquei no botão!");
        with (spawner_l2) {
            start_wave = true;
        }
    }
}