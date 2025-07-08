if (spawn_count < spawn_amount) {
    var x_pos = irandom_range(50, room_width - 50);
    var y_pos = irandom_range(50, room_height - 50);

    var mosca = instance_create_layer(x_pos, y_pos, "Instances", obj_mosquitomenu);
    mosca.image_xscale = 0.1117397;
    mosca.image_yscale = 0.1117397;

    spawn_count++;
    alarm[0] = room_speed * 0.5; // agenda a próxima
}
