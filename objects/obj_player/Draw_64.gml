/// @description Insert description here
// You can write your code in this editor

var altura = display_get_gui_height();

var multiplicador = 0;
var espaco = 40;
repeat(vida)
{
	draw_sprite_ext(Player, 0, 40 + espaco * multiplicador, 60, 0.3, 0.3, 0, c_white, .5);
	
	multiplicador++;
}

multiplicador = 0;

repeat(escudos)
{
	draw_sprite_ext(spr_escudo, 2, 40 + espaco * multiplicador, 110, 0.3, 0.3, 0, c_white, .5);
	
	multiplicador++;
}

