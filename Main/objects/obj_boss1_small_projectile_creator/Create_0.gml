/// @description Insert description here
// You can write your code in this editor
t=0;

if instance_exists(obj_boss1_phase2)
{
	x = obj_boss1_phase2.x;
	y = obj_boss1_phase2.y+6;
}
if instance_exists(obj_boss1_phase3)
{
	x = obj_boss1_phase3.x;
	y = obj_boss1_phase3.y+6;
}

if instance_exists(obj_boss1e_phase2)
{
	x = obj_boss1e_phase2.x;
	y = obj_boss1e_phase2.y+6;
}
if instance_exists(obj_boss1e_phase3)
{
	x = obj_boss1e_phase3.x;
	y = obj_boss1e_phase3.y+6;
}

//stage 1-слева, 2-справа
stage = 1;
