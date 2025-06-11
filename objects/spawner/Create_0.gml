spawn_amount=15;
spawn_count=0;
spawn_rate = room_speed * 0.5;
alarm[0]=1;
alarm[1]=game_get_speed(gamespeed_fps) * 2;
 
global.hp = 100;
global.spd = 3; 
global.level = 1;

global.moeda = 100;
global.vida = 100;

global.game_over = false;

btn_construir_x = 1300; // ajuste conforme necessário
btn_construir_y = 5;
btn_construir_largura = 1;
btn_construir_altura = 1;

global.menu_construir_aberto = false;