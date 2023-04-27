/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if global.secrets_lava1_s2 = 0 
{
	instance_create_depth(736,224,100,obj_secret_lava1_s2);
}