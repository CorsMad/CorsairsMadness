/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_destrutable_chain_block_mask) || place_meeting(x,y,obj_destrutable_chain_block_mask2)
{
	instance_create_depth(x,y,-1,obj_destrutable_chain_block_mask);
	instance_destroy();
}
	