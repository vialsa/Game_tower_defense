draw_set_color(c_green);
draw_rectangle(0, 0, room_width, room_height, false);

draw_set_color(c_white);
draw_set_font(fnt_pixel);

var margin_x = 30;
var margin_y = 30;
var line_h = string_height("I") * 1.5;

draw_text(margin_x, margin_y, "Tutorial do Jogo:");
draw_text(margin_x, margin_y + line_h, "- Selecione uma Torre na barra de construcao");
draw_text(margin_x, margin_y + line_h * 2, "- Arreste ate onde vc quer posicionar estrategicamente");
draw_text(margin_x, margin_y + line_h * 3, "- Ao comprar uma torre não poderar vender");
draw_text(margin_x, margin_y + line_h * 4, "- Cada torre tem um efeito diferente");
draw_text(margin_x, margin_y + line_h * 5, "- Ao inicar a wave ondas de inimigos começaram");
draw_text(margin_x, margin_y + line_h * 6, "- Cada inimigo tem vida e velocidade diferente");
draw_text(margin_x, margin_y + line_h * 7, "- Cuidado com a economia");
draw_text(margin_x, margin_y + line_h * 8, "- Evite os inimigos e sobreviva! Divirta-se!");


if (btn_selecionado) {
    draw_set_color(c_red);
    draw_text(btn_x + 10, btn_y, btn_text); 
} else {
    draw_set_color(c_white);
    draw_text(btn_x, btn_y, btn_text);
}

draw_set_color(-1);
draw_set_font(-1);
