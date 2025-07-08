var escala=2;

if (position_meeting(mouse_x, mouse_y, id)) {
    draw_sprite_ext(sprite_index, image_index, x, y, 1.1, 1.1, 0, c_white, 1); // aumenta ao passar o mouse
} else {
    draw_self();
}



