/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if global.secrets_g2b_s = 0 
{
	instance_create_depth(144,224,100,obj_secret_g2b_s);
}