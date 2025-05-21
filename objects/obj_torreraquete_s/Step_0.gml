x = mouse_x;
y = mouse_y;

if (place_meeting(x,y,obj_bag) or place_meeting(x,y,obj_torreparent)) cor = c_red;
else cor = c_white;

if (mouse_check_button_pressed(mb_right)) {
    instance_destroy(); // Destroi a torre 
}




