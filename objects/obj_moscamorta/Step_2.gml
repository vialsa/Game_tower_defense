// Efeito de fade out
alpha -= fade_speed;

// Destrói quando ficar totalmente transparente
if (alpha <= 0) {
    instance_destroy();
}