// obj_gameover - Evento Create

// Dimensões da tela (da room ou view)
var _room_width = camera_get_view_width(view_camera[0]);
var _room_height = camera_get_view_height(view_camera[0]);

// Dimensões dos botões - TORNADAS VARIÁVEIS DE INSTÂNCIA (SEM 'VAR')
button_width = 150;  // Largura do botão
button_height = 40;  // Altura do botão
var _button_spacing = 20; // Espaço entre os botões (pode continuar local, pois só é usado aqui)

// Posição central da tela para o bloco de botões
var _center_x = _room_width / 2;
var _center_y = _room_height / 2;

// Calcula a altura total ocupada pelos botões + espaço
var _total_buttons_height = (button_height * 2) + _button_spacing;

// Calcula a posição Y inicial para o primeiro botão (centralizado verticalmente)
btn_restart_y = _center_y - (_total_buttons_height / 2);
btn_menu_y = btn_restart_y + button_height + _button_spacing;

// Calcula a posição X para centralizar os botões horizontalmente
btn_restart_x = _center_x - (button_width / 2);
btn_menu_x = _center_x - (button_width / 2);

// Propriedades para o fundo escuro
fade_alpha = 0; // Começa transparente
fade_target_alpha = 0.7; // Alvo de escuridão (70% opaco)
fade_speed = 0.05; // Velocidade de fade in