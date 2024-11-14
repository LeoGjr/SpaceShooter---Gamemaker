/// @description Insert description here
// You can write your code in this editor
vspeed = 3;
chance = 20;
pontos = 10;
alarm[0] = random_range(1, 3) * room_speed;


if (place_meeting(x, y, obj_inimigo))
{
	instance_destroy(id, false);
}

atirando = function()
{
	if(y >= 0)
	{
		instance_create_layer(x - 3, y + sprite_height / 3, "Tiros", obj_tiro_inimigo);
		
		audio_play_sound(sfx_laser1, 1, 0);
	}
}

dropa_item = function(_chance)
{
	var valor = random(100);
	
	if(valor < _chance && y > 96)
	{
		instance_create_layer(x, y, "Tiros", obj_power_up);
	}
}
