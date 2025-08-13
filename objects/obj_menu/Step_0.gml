if (keyboard_check_pressed(vk_down)) 
{
	atual++;
	margem=0;
}
if (keyboard_check_pressed(vk_up)) 
{
	atual--;
	margem=0;
}
atual = clamp(atual, 0, array_length(menu)-1);

if (keyboard_check_pressed(vk_enter))
{
	menu[atual].funcao();
}

var mouse_x_local = mouse_x;
var mouse_y_local = mouse_y;

draw_set_font(fnt_menu);
var altura_item = string_height("I") * 1.5;

for (var i = 0; i < array_length(menu); i++) {
	var item_y = 20 + altura_item * i;
	var item_h = altura_item;

	// Define largura do texto (pode ajustar se usar margens)
	var texto = menu[i].texto;
	var item_l = string_width(texto);

	if (mouse_x_local >= 20 && mouse_x_local <= 20 + item_l &&
	    mouse_y_local >= item_y && mouse_y_local <= item_y + item_h) {

		atual = i; // destaca a opção com mouse
		margem = 0;

		if (mouse_check_button_pressed(mb_left)) {
			menu[i].funcao(); // executa ao clicar
		}
	}
}

margem = lerp(margem,20, .2);