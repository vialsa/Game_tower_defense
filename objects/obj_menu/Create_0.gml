tutoras = false;

opcao1 = {
	texto : "Jogar",
	funcao : function()
	{
		room_goto(rm_nivel_1);
	}
}

opcao2 = {
	texto : "Tutorial",
	funcao : function()
	{
		room_goto(rm_tutoras);
	}
}

opcao3 = {
	texto : "Sair",
	funcao : function()
	{
		game_end();
	}
}

menu = [opcao1, opcao2, opcao3];
atual = 0;
margem = 0;

global.spd = 5;
global.moscas_mortas = 0;

spawn_amount = 10;
spawn_count = 0;
alarm[0] = room_speed * 0.5;
alarm[1] = room_speed * 2;
