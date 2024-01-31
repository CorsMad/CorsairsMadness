/// @description Insert description here
// You can write your code in this editor
 
 //animtion
/*
if instance_exists(obj_Player)
{
	depth = obj_Player.depth+1;	
}
*/
if !place_meeting(x,y+1,obj_block_ladder){
    instance_create_depth(x,y+16,depth,obj_block_ladder_blank);
}