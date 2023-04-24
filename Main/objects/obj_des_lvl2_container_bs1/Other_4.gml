/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if global.secrets_d2b_s1 = 0 
{
	instance_create_depth(48,160,100,obj_secret_d2b_s1);
}