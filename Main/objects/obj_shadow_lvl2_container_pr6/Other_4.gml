/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if global.secrets_g2p_r6 = 0 
{
	instance_create_depth(448,256,102,obj_secret_g2p_r6);
}