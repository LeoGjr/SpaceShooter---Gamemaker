/// @description Insert description here
// You can write your code in this editor

velocidade = 5;

espera_tiro = room_speed;

level_tiro = 1;

vida = 3;

escudos = 3;

meu_escudo = noone;

atirando = function()
{
	var fire = keyboard_check(vk_space);
	var y_tiro = y - sprite_height/3;
	if (fire && alarm[0] == -1)
	{
		alarm[0] = espera_tiro;
		
		audio_play_sound(sfx_laser2, 1, 0);
		
		if(level_tiro == 1)
		{
			instance_create_layer(x, y_tiro, "Tiros", obj_tiro_player);
		}
		else if(level_tiro == 2)
		{
			tiroDuplo();
		}
		else if(level_tiro == 3)
		{
			instance_create_layer(x, y_tiro, "Tiros", obj_tiro_player);
			tiroDuplo();
		}
		else if(level_tiro == 4)
		{
			tiro4();
		}
		else if(level_tiro == 5)
		{
			tiroDuplo();
			tiro4();
		}
	}
}

tiroDuplo = function()
{
	var y_tiro = y - sprite_height/3;
	var tiro1 = instance_create_layer(x - 60, y_tiro + 10, "Tiros", obj_tiro2_player);
	tiro1.hspeed = -3;
	var tiro2 = instance_create_layer(x + 60, y_tiro + 10, "Tiros", obj_tiro2_player);
	tiro2.hspeed = 3;
}

tiro4 = function()
{
	var y_tiro = y - sprite_height/3;
	var direcao = 75
	repeat(3)
	{
		var meu_tiro = instance_create_layer(x, y_tiro + 10, "Tiros", obj_tiro_player);
		meu_tiro.direction = direcao;
		meu_tiro.image_angle = meu_tiro.direction - 90;
		direcao += 15;
	}
}


level_up = function(_chance)
{
	if(_chance >= 90)
	{
		if(level_tiro < 5)
		{
			level_tiro++;
		}
		else
		{
			ganhando_pontos(100);
		}
	}
	else if(_chance >= 45)
	{
		if(espera_tiro > 15)
		{
			espera_tiro *= 0.9;
		}
		else
		{
			ganhando_pontos(100);
		}
	}
	else
	{
		if(velocidade < 10)
		{
			velocidade += .5;
		}
		else
		{
			ganhando_pontos(100);
		}
	}
}

perde_vida = function()
{
	if(!meu_escudo)
	{
		if(vida > 0)
		{
			vida--;
		
			screenshake(5);
		}
		else
		{
			instance_destroy();
		
			screenshake(20);
		}
	}
}

cria_escudo = function()
{
	shield = keyboard_check_pressed(ord("E"));
	if(shield && escudos > 0 && !meu_escudo)
	{
		var escudo = instance_create_layer(x, y, "Escudo", obj_escudo);
	
		escudo.alvo = id;
	
		meu_escudo = escudo;
	
		escudos--;
	}
}
