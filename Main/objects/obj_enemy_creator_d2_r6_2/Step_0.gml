/// @description Insert description here

/* Указать следующие параметры

x_cr = 
y_cr =
obj_cr = 

*/

// You can write your code in this editor


if place_meeting(x,y,obj_Player)
{
	 instance_create_depth(672,144,1,obj_destructable_block_big_sand);
	 var i1 = instance_create_depth(688,128,1,obj_enemy_creator_d2_r6_3);
	 i1.image_xscale = 2;

	
	instance_destroy();	
}
