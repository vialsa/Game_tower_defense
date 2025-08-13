var mx = device_mouse_x(0);
var my = device_mouse_y(0);

var text_width = string_width(btn_text);
var text_height = string_height(btn_text);

if (mx >= btn_x && mx <= btn_x + text_width && my >= btn_y && my <= btn_y + text_height) {
    btn_selecionado = true;
} else {
    btn_selecionado = false;
}
