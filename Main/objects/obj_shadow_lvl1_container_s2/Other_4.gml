/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if global.secrets_g1_s2 = 0 
{
	instance_create_depth(32,80,100,obj_secret_g1_s2);
}