
if (spawn_count < spawn_amount) {
        
        var tipo_inimigo;

        if (global.level < 3) {
            tipo_inimigo = obj_mosquito;
        } else {
            if (irandom(1) == 0) {
                tipo_inimigo = obj_mosquito;
            } else {
                tipo_inimigo = obj_mosca;
            }
        }

        instance_create_layer(x, y, "inimigos", tipo_inimigo);
        spawn_count++;

        alarm[0] = room_speed * 0.5;
    }

