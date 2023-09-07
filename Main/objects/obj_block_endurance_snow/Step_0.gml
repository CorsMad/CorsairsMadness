/// @description Insert description here
// You can write your code in this editor

if state = 1
{
	instance_create_depth(x-20,y+4,depth,obj_block_endurance_part);
	instance_create_depth(x-12,y+4,depth,obj_block_endurance_part);
	instance_create_depth(x-4,y+4,depth,obj_block_endurance_part);
	instance_create_depth(x+4,y+4,depth,obj_block_endurance_part);
	instance_create_depth(x+12,y+4,depth,obj_block_endurance_part);
	instance_create_depth(x+20,y+4,depth,obj_block_endurance_part);
	
	instance_create_depth(x-20,y+12,depth,obj_block_endurance_part);
	instance_create_depth(x-12,y+12,depth,obj_block_endurance_part);
	instance_create_depth(x-4,y+12,depth,obj_block_endurance_part);
	instance_create_depth(x+4,y+12,depth,obj_block_endurance_part);
	instance_create_depth(x+12,y+12,depth,obj_block_endurance_part);
	instance_create_depth(x+20,y+12,depth,obj_block_endurance_part);
	instance_destroy();	
}
