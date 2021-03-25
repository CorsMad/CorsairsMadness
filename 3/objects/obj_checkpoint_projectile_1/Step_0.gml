/// @description Insert description here
// You can write your code in this editor
if isOn = 0 && place_meeting(x,y,obj_Player)
{
	isOn = 1;
	image_speed = 4;
}
if (image_index > image_number - 1) {
    image_speed = 0;
}
if isOn = 1 && timer < 51
{
	timer++;
}
switch(timer)
{
	case 12:	l = instance_create_depth(x-16,y-12,0,obj_sfx_checkpoint_small);
				l.hspd = -1;break;
	case 42:    k = instance_create_depth(x+8,y-54,0,obj_sfx_checkpoint_small);
				k.hspd = 1;break;
	case 50: instance_create_depth(x,y-72,0,obj_sfx_checkpoint_cretor_big);break;
}