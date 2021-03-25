/// @description Insert description here
// You can write your code in this editor
if isOn = 0 && place_meeting(x,y,obj_Player)
{
	isOn = 1;
	image_speed = 5;
}
if (image_index > image_number - 1) {
    image_speed = 0;
}
if isOn = 1 && timer < 51
{
	timer++;
}
if timer = 45
{
	instance_create_depth(x,y-72,0,obj_sfx_checkpoint_cretor_big);	
}
if timer = 25
{
	instance_create_depth(x,y-40,0,obj_sfx_checkpoint_cretor_small);
}