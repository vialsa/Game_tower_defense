hp -= 50;
morreu_ataque = true;
with(other)instance_destroy();


if (hp <= 0) {
    global.moeda += 10;
	instance_create_layer(x, y, "instances",obj_moscamorta);
    instance_destroy();
}