
if (spawn_count < spawn_amount) {
        
        var tipo_inimigo;

        if (global.level < 3) {
            tipo_inimigo = obj_mosquitol2;
        } else {
            if (irandom(1) == 0) {
                tipo_inimigo = obj_mosquitol2;
            } else {
                tipo_inimigo = obj_moscal2;
            }
        }

        instance_create_layer(x, y, "inimigos", tipo_inimigo);
        spawn_count++;

        alarm[0] = room_speed * 0.5;
    }

