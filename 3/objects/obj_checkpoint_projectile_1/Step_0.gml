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