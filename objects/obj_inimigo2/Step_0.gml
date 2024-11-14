/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(y > room_height/3 && posso_me_mover_lado == true)
{
	if(x > room_width/2)
	{
		hspeed = -3;
		posso_me_mover_lado = false;
	}
	else
	{
		hspeed = 3;
		posso_me_mover_lado = false;
	}
}


