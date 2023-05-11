/// @description Insert description here
// You can write your code in this editor
x+=hspd;
y+=vspd;

if vspd < 4 vspd+=0.2;

hspd = lerp(hspd,0,0.02);

if place_meeting(x,y+vspd,obj_block)
{
	
	instance_create_depth(x,256,depth-2,obj_sfx4)	
	instance_create_depth(x,256,depth-1,obj_sfx3)	
	var l = instance_create_depth(x,256,depth,obj_boss_l2_bomb_small_fire);
	var r = instance_create_depth(x,256,depth,obj_boss_l2_bomb_small_fire);
	l.hspd = -2;
	r.hspd = 2;
	instance_destroy();
}