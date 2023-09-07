/// @description Insert description here
// You can write your code in this editor



t++;
if t > 50 
{
	//
    if image_alpha < 1 image_alpha +=0.01;   
}

if t >=200
{
    room_goto(GlobalMap);
    instance_destroy(obj_Player);
}
