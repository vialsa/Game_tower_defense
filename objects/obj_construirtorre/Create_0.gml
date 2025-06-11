// obj_construirtorre - Evento Create

// --- Dimensões do Painel de Fundo (PRECISAM SER AS MESMAS DO draw_rectangle) ---
// Se você mudar o draw_rectangle no Evento Draw, mude esses valores aqui também.
var _largura_painel = 100;  // Largura definida no draw_rectangle (x + 100)
var _altura_painel = 500;   // Altura definida no draw_rectangle (y + 500)

// --- Configurações para o posicionamento dos objetos de torre clicáveis ---
// Espaço em pixels extra entre a base de um objeto e o topo do próximo.
var _espaco_extra_entre_objetos = 10; 

// --- 1. Obter as alturas das sprites dos objetos para cálculo vertical ---
// É importante obter a altura real de cada sprite, pois elas podem ser diferentes.
var _altura_sprite_raquete = sprite_get_height(obj_torreraquete_c.sprite_index);
var _altura_sprite_spray = sprite_get_height(obj_torrespray_c.sprite_index);

// --- 2. Calcular a altura total que o BLOCO de objetos e seus espaços ocuparão ---
// Isso inclui a altura de cada torre + o espaço entre elas.
// Adicione a altura e o espaço para cada torre adicional que você tiver.
var _altura_total_ocupada = _altura_sprite_raquete + _espaco_extra_entre_objetos + _altura_sprite_spray;

// --- 3. Calcular o offset Y inicial para centralizar verticalmente o BLOCO de objetos ---
var _espaco_vertical_restante = _altura_painel - _altura_total_ocupada;

// Calcula o offset inicial para "empurrar" o bloco para o centro.
// Se não houver espaço restante (ou for negativo), o offset é 0 (ou um mínimo).
var _y_offset_inicial = _espaco_vertical_restante > 0 ? _espaco_vertical_restante / 2 : 0;

// Opcional: Garante um mínimo de offset caso o cálculo dê 0 ou negativo,
// ou para garantir uma margem superior mínima mesmo que a centralização seja 0.
_y_offset_inicial = max(_y_offset_inicial, 10); // Garante pelo menos 10px de margem superior. Ajuste conforme necessário.

// Posição Y atual para o próximo objeto a ser criado.
// Começa no 'y' do obj_construirtorre (canto superior do painel) + o offset inicial calculado.
var _current_y_position = y + _y_offset_inicial;

// --- Cria a instância de obj_torreraquete_c (Primeira Torre) ---
// Obtém a largura da sprite para centralização horizontal.
var _largura_raquete = sprite_get_width(obj_torreraquete_c.sprite_index);

// Calcula a posição X para centralizar a torre Raquete dentro do painel:
// Começa no 'x' do painel, adiciona metade da largura do painel, e subtrai metade da largura da sprite.
var _x_centralizado_raquete = x + (_largura_painel/2) - (_largura_raquete/2);

// Cria o objeto na camada "GUI" (certifique-se de que esta camada existe e é visível).
instance_create_layer(_x_centralizado_raquete, _current_y_position, "GUI", obj_torreraquete_c);

// --- Atualiza a posição Y para o próximo objeto ---
// Move a posição Y atual para baixo pela altura da sprite da torre anterior + o espaço extra.
_current_y_position += _altura_sprite_raquete + _espaco_extra_entre_objetos;

// --- Cria a instância de obj_torrespray_c (Segunda Torre) ---
// Obtém a largura da sprite para centralização horizontal.
var _largura_spray = sprite_get_width(obj_torrespray_c.sprite_index);

// Calcula a posição X para centralizar a torre Spray dentro do painel.
var _x_centralizado_spray = x + (_largura_painel/2) - (_largura_spray/2);

// Cria o objeto na camada "GUI".
instance_create_layer(_x_centralizado_spray, _current_y_position, "GUI", obj_torrespray_c);

// --- Exemplo de como adicionar mais torres (descomente e adicione conforme necessário) ---
/*
// Atualiza a posição Y para a próxima torre (se houver uma terceira).
_current_y_position += _altura_sprite_spray + _espaco_extra_entre_objetos;

// Exemplo: obj_outratorre_c
var _altura_outra = sprite_get_height(obj_outratorre_c.sprite_index);
var _largura_outra = sprite_get_width(obj_outratorre_c.sprite_index);
var _x_centralizado_outra = x + (_largura_painel / 2) - (_largura_outra / 2);
instance_create_layer(_x_centralizado_outra, _current_y_position, "GUI", obj_outratorre_c);
*/