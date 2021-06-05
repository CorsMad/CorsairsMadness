/// @description Insert description here
// You can write your code in this editor
if isClosed = 1
{
	mask_index = spr_wall_trigger_closed_mask;	
}
if imspd = 1 
{
	image_speed = 1;	
	imspd = 0;
}
if image_index = 7
{
	
	instance_create_depth(x+8,y+96,-1,obj_sfx1);
	instance_create_depth(x+8,y+96,-1,obj_sfx_dust_expl_small);
}
if (image_index > image_number - 1) {
	image_speed = 0;
}