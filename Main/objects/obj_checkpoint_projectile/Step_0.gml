/// @description Insert description here
// You can write your code in this editor
if isOn = 0 && place_meeting(x,y,obj_Player)
{
	sprite_index = spr_checkpoint_4_off_on;	
	image_speed = 2;
	isOn = 1;
    fnc_snd_play_over(snd_checkpoint);
    instance_create_depth(camera_get_view_x(view_camera[0])+24,camera_get_view_y(view_camera[0])+48,-10000000000,obj_icon_save);
}

if isOn = 1
{
	if (image_index > image_number - 1) 
	{
		instance_create_depth(x,y-46,0,obj_sfx_checkpoint_cretor_big);
		isOn = 2;
		sprite_index = spr_checkpoint_4_on;
		image_speed = 1;
	}	
}

if isOn = 2
{
    sprite_index = spr_checkpoint_4_on;
    image_speed = 1;
}