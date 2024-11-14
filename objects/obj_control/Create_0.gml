/// @description Insert description here
// You can write your code in this editor

randomize();



alarm[0] = room_speed;

pontos = 0;

level = 1;

proximo_level = 100;

gameover_seq = noone;

criar_boss = true;

level_completo = false;

ganha_pontos = function(_pontos)
{
	pontos += _pontos * level;
	
	if(pontos > proximo_level)
	{
		level++;
		
		proximo_level *= 2; 
	}
}

cria_inimigo = function()
{
	var xx = irandom_range(64, 1888);
	var yy = irandom_range(-96, -1504 - (level * 500));

	var chance = random_range(0, level);
	var inimigo = obj_inimigo;
	if(chance > 2)
	{
		inimigo = obj_inimigo2;
	}

	instance_create_layer(xx, yy, "Inimigos", inimigo);
}
