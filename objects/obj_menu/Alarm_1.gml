if (instance_number(obj_mosquitomenu) == 0 && instance_number(obj_moscamorta) == 0) {
    spawn_count = 0; // reseta o contador
    alarm[0] = room_speed * 0.5; // começa a respawnar de novo
}

// Continua verificando de tempos em tempos
alarm[1] = room_speed * 2;
