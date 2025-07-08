if (!variable_instance_exists(id, "x_anterior")) {
    x_anterior = x;
    y_anterior = y;
}

var dir = point_direction(x_anterior, y_anterior, x, y);
var base_scale = abs(image_xscale);


if (dir < 90 || dir > 270) {
    image_xscale = -base_scale;  
} else {
    image_xscale = base_scale;   
}

x_anterior = x;
y_anterior = y;
