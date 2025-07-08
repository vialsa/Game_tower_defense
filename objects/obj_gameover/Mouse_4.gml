var mx = device_mouse_x(0);
var my = device_mouse_y(0);

// Clicou no botão RESTART?
if(mx > btn_restart_x && mx < btn_restart_x + btn_largura &&
   my > btn_restart_y && my < btn_restart_y + btn_altura){
    room_restart(); // reinicia a sala atual
}

// Clicou no botão MENU?
if(mx > btn_menu_x && mx < btn_menu_x + btn_largura &&
   my > btn_menu_y && my < btn_menu_y + btn_altura){
    room_goto(rm_menu); // vai para a room do menu (troque "rm_menu" pelo nome da sua room menu)
}
