/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if global.secrets_s2p_s = 0 
{
	instance_create_depth(1248,112,100,obj_secret_s2p_s);
}