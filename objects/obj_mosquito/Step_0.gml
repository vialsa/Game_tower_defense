if(global.game_pause){
    path_end();
    exit;
}

if (!variable_instance_exists(id, "x_anterior")) {
    x_anterior = x;
    y_anterior = y;
}


var dir = point_direction(x_anterior, y_anterior, x, y);


if (dir >= 45 && dir < 135) {
    
} else if (dir >= 135 && dir < 225) {
    
    image_xscale = 0.1117397; 
} else if (dir >= 225 && dir < 315) {
    
} else {
    
    image_xscale = -0.1117397; 
}

x_anterior = x;
y_anterior = y;


audio_play_sound(snd_fly,1,false);
audio_sound_gain(snd_fly, 0.0009, 0);

if (hp <= 0) {
    global.moeda += 10; 
    instance_destroy();
}

if (path_position >= 1) {
    global.vida -= 10;
    instance_destroy();
}
