draw_self();
draw_circle(x,y,alcance,true);

var en = instance_nearest(x,y,obj_inimigosfraco);
if( en != noone){
	if(point_distance(x,y,en.x,en.y) <= alcance){
		
		if(!tiro){
			alarm[0] = 1;
			tiro = true;
		}
		
		tiro_inimigo = en;
		draw_line(x,y,en.x,en.y);
	}else{
		tiro = false;
		tiro_inimigo= noone;
	}
}