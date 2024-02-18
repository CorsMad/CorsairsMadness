/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);


if global.chest_l1_r3 = 1
{
    instance_create_depth(288,224,200,obj_chest_creator_behind_l1_r3);
}

if global.secrets_l1_r3 = 0 
{
	instance_create_depth(720,208,200,obj_secret_l1_r3);
}