/// @description Insert description here

/* Указать следующие параметры

x_cr = 
y_cr =
obj_cr = 

*/

// You can write your code in this editor


if place_meeting(x,y,obj_Player)
{
	 instance_create_depth(880,192,1,obj_destructable_block_small_sand);	
	 instance_create_depth(896,192,1,obj_destructable_block_small_sand);	
	 instance_create_depth(928,160,1,obj_destructable_block_small_sand);	
	 instance_create_depth(928,176,1,obj_destructable_block_small_sand);	
	
	instance_destroy();	
}
