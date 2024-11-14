/// @description Insert description here
// You can write your code in this editor

if(!instance_exists(obj_inimigo))
{
	var repetir = 10 * level;
	if(level < 10)
	{
		repeat(repetir)
		{
			cria_inimigo();
		}
	}
	else
	{
		if(criar_boss == true)
		{
			layer_sequence_create("Boss_entrada", 960, 512, sq_boss_entrando);
			
			criar_boss = false;
			
			audio_stop_all();
		}
	}
}



alarm[0] = room_speed * 5;
