if (instance_exists(tiro_inimigo)) {
    var projetil = instance_create_depth(x, y, -9, obj_tirospray);
    projetil.speed = 40;
    projetil.direction = point_direction(x, y, tiro_inimigo.x, tiro_inimigo.y);
    
    
    atirando = true;
    alarm[1] = 5; // Dura ~5 frames, ajuste conforme a velocidade do sprite

    alarm[0] = velocidade_ataque;
} else {
    tiro_inimigo = false;
}
