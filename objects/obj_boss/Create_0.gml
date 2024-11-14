/// @description Insert description here
// You can write your code in this editor

audio_play_sound(Aggressor, 0, 1);

vida_max = 1500;
vida_atual = vida_max;

estado_atual = choose("estado1", "estado2", "estado3");

delay_tiro = room_speed/2;
espera_tiro = 0;

delay_estado = room_speed * 10;
espera_estado = delay_estado;

velocidade_horizontal = -3;

criar_minions = true;

tiro_02 = function()
{
	instance_create_layer(x, y + 80, "Tiros", obj_tiro_inimigo2);
	
	audio_play_sound(sfx_laser1, 1, 0);
}

tiro_01 = function(_direita)
{
	if(_direita)
	{
		var _posx = 160;
	}
	else
	{
		var _posx = -160;
	}
	instance_create_layer(x + _posx, y + 10, "Tiros", obj_tiro_inimigo);
	
	audio_play_sound(sfx_laser1, 1, 0);
}

estado_01 = function()
{
	espera_tiro--;
	if(espera_tiro <= 0)
	{
		instance_create_layer(x, y + 80, "Tiros", obj_tiro_inimigo2);
		
		espera_tiro = delay_tiro;
	}
}

estado_02 = function()
{
	x += velocidade_horizontal;
	
	if(x >= 1632 or x <= 288)
	{
		velocidade_horizontal *= -1;
	}
	
	espera_tiro--;
	if(espera_tiro <= 0)
	{
		tiro_01(false);
		tiro_01(true);
		espera_tiro = delay_tiro * 2;
	}
}

estado_03 = function()
{
	espera_tiro--;
	if(espera_tiro <= 0)
	{
		tiro_02();
		
		espera_tiro = delay_tiro * 2;
	}
	if(espera_tiro == delay_tiro)
	{
		tiro_01(false);
		tiro_01(true);
	}
}

estado_04 = function()
{
	sprite_index = spr_boss_escuro;
	
	x += sign(room_width / 2 - x);
	
	if(criar_minions)
	{
		var minion = instance_create_layer(128, 672, "Inimigos", obj_boss_minion);
	
		minion.image_angle = 90;
	
		minion = instance_create_layer(1760, 672, "Inimigos", obj_boss_minion);
		minion.image_angle = 270;
		
		criar_minions = false;
	}
}

troca_estado = function()
{
	espera_estado--;
	if(espera_estado <= 0)
	{
		if(vida_atual > vida_max / 2)
		{
			estado_atual = choose("estado1", "estado2", "estado3");
		}
		else
		{
			estado_atual = choose("estado1", "estado2", "estado3", "estado4");
		}
	
	
		espera_estado = delay_estado;
	
		criar_minions = false;
	}
}
