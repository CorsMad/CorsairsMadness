/// @description Insert description here
// You can write your code in this editor

a++;
if a = a_max{
	mask_index = noone;
	isDead = 1;	
}
if isDead = 1{
	instance_create_depth(x,y,depth-1,obj_sfx_explosion_bomb);
    instance_destroy();	
}


#region anim
t_anim++;
if t_anim = t_anim_max{
	t_anim = 0;
	if dir = 1 image_angle-=45;
	if dir = -1 image_angle+=45;	
}
#endregion
