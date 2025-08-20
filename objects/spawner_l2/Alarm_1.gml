if(instance_number(obj_mosquitol2) <=0){

spawn_count = 0;
spawn_amount++;
global.level++;
global.spd+=0.1;

alarm[0] = room_speed * 0.5;

}

alarm[1] = room_speed * 2;