/// @description Insert description here
// You can write your code in this editor

if(estado_atual != "estado4")
{
	sprite_index = spr_boss_combate;
}


troca_estado();


if(estado_atual == "estado1")
{
	estado_01();
}
else if(estado_atual == "estado2")
{
	estado_02();
}
else if(estado_atual == "estado3")
{
	estado_03();
}
else if(estado_atual == "estado4")
{
	estado_04();
}
