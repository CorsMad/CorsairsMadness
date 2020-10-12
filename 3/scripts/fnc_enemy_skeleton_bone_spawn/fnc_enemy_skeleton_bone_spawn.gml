// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fnc_enemy_skeleton_bone_spawn()
{
	var i1 = instance_create_depth(x,y-16,1,obj_skeleton_bone);
	var i2 = instance_create_depth(x,y-16,1,obj_skeleton_bone);
	var i3 = instance_create_depth(x,y-16,1,obj_skeleton_bone);
	var i4 = instance_create_depth(x,y-16,1,obj_skeleton_bone);
	var i5 = instance_create_depth(x,y-16,1,obj_skeleton_bone);
	
	
	i1.hspd = random_range(-3,3);
	i1.vspd = random_range(-4,-1);
	
	i2.hspd = random_range(-3,3);
	i2.vspd = random_range(-4,-1);
	
	i3.hspd = random_range(-3,3);
	i3.vspd = random_range(-4,-1);
	
	i4.hspd = random_range(-3,3);
	i4.vspd = random_range(-4,-1);
	
	i5.hspd = random_range(-3,3);
	i5.vspd = random_range(-4,-1);
	
}