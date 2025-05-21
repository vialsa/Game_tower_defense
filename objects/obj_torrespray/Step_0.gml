if (atirando) {
    sprite_index = spt_torrespray; // mudar para a sprite da torrespray ataque
    
    if (instance_exists(tiro_inimigo)) {
        if (tiro_inimigo.x > x) {
            image_xscale = 1;  
        } else {
            image_xscale = -1; 
        }
    }
} else {
    
    sprite_index = spt_torrespray;
}
