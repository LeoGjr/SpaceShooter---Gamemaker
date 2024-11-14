/// @description Insert description here
// You can write your code in this editor

alarm[0] = room_speed;

image_alpha = 0;
primeiro_tiro = false;
vida = 10;

escala = 1;
aumento_escala = 0.01;

if(place_meeting(x, y, obj_boss_minion))
{
	y -= 128;
}
