/// @description Insert description here
// You can write your code in this editor



draw_set_font(fnt_pontos);

var _pontos = round(pontos);
	
draw_text(120, 180, "Maior pontuação: " + string(_pontos));
	
draw_text(120, 280, "Inimigos mortos: " + string(global.total_inimigos));
	
draw_text(120, 380, "Total de mortes: " + string(global.total_mortes));
	
draw_set_font(-1);

if(pontos < global.max_pontos)
{
	var _incrementa_pontos = global.max_pontos * 0.005;
	pontos += _incrementa_pontos;
}


