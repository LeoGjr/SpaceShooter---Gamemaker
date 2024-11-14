/// @description Insert description here
// You can write your code in this editor

if(!instance_exists(obj_player) && !gameover_seq && level_completo == false)
{
	gameover_seq = layer_sequence_create("Sequences", room_width/2, room_height/2, sq_gameover);
	
	audio_play_sound(sfx_lose, 1, 0);
}


