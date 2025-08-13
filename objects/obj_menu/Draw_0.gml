for (var i=0; i<array_length(menu); i++)
{
	
	var _cor = c_white;
	
	draw_set_font(fnt_pixel)
	var _altura = string_height("I") *1.5;
	
	var _margem =0;
	

	if (i == atual)
	{
		_cor =  c_red;
		_margem = margem;
	}
	
	draw_set_color(_cor)
	draw_text(30 + _margem, 20 + _altura * i, menu[i].texto);
	draw_set_color(-1);
	draw_set_font(-1)
	
}
