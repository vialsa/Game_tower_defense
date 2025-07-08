opcao1=
{
	
	texto : "jogar",
	funcao : function()
	{
		room_goto(rm_nivel_1)
	}
}
opcao2=
{
	texto : "sair",
	funcao : function()
	{
		game_end();
	}
}

menu = [opcao1, opcao2];
atual = 0;
margem = 0;

global.spd = 5;
global.moscas_mortas = 0;

spawn_amount = 10;      // quantas moscas vão nascer no menu
spawn_count = 0;
alarm[0] = room_speed * 0.5;
alarm[1] = room_speed * 2;