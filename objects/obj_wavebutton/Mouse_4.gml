show_debug_message("Cliquei no botão!");

global.wave_pronta = true;
instance_destroy(); // remove o botão depois do clique

with (spawner) {
    spawn_count = 0;
    alarm[0] = spawn_rate;
	alarm[1] = room_speed * 2;
}
