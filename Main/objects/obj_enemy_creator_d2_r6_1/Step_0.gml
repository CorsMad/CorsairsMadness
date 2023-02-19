/// @description Insert description here

/* Указать следующие параметры

x_cr = 
y_cr =
obj_cr = 

*/

// You can write your code in this editor


if place_meeting(x,y,obj_Player)
{
	 instance_create_depth(640,192,1,obj_enemy_creator_d2_r6_2);
	 instance_create_depth(720,96,1,obj_destructable_block_big_sand);
	 instance_create_depth(640,208,1,obj_destructable_block_small_sand);

	
	instance_destroy();	
}
