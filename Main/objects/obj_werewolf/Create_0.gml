/// @description Insert description here
// You can write your code in this editor

/*
states

0 - на месте
1 - преследует
2 - получение урона/отскок
3 - бешенство
*/

if instance_exists(obj_Player){
	if obj_Player.x < x image_xscale = 1 else image_xscale = -1;	
}


turn_t = 0;
turn = 0;
state = 0;
enemy_hp = 2;
hit_cd = 0;
t = 0;
hspd = 0;
vspd = 0;
grounded = 0;
vulnerable = 1;
t_madness = 0;
madness = 0;

snd = 0;