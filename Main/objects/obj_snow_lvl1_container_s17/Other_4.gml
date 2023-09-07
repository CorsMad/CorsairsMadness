/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if obj_Player.x > room_width/2 {
	instance_create_depth(160,256,1,obj_npc_snow_mazemerch)	
}