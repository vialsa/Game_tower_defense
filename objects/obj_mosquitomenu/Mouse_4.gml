var morta = instance_create_layer(x, y, layer, obj_moscamorta);

global.moscas_mortas += 1;

// Destroi a mosca viva
instance_destroy();
