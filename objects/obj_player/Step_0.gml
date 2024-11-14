/// @description Insert description here
// You can write your code in this editor

var up, down, left, right;
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));



cria_escudo();



y += (down - up) * velocidade;
x += (right - left) * velocidade;


x = clamp(x, 64, 1856);
y = clamp(y, 64, 1024);
atirando();

if(keyboard_check_pressed(vk_up))
{
	if(level_tiro < 5)
	{
		level_tiro++;
	}
}

if(keyboard_check_pressed(vk_down) && level_tiro > 1)
{
	level_tiro--;
}

if(keyboard_check_pressed(vk_left) && espera_tiro > 20)
{
	espera_tiro *= .9;
}

if(keyboard_check_pressed(vk_right))
{
	espera_tiro *= 1.1;
}
