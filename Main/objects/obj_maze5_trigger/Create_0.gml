/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
image_index = 0;
isActive = 0;
t = 0;

if instance_exists(obj_Player){
	if obj_Player.x > room_width/2 _enabled	= 0 else _enabled = 1;
} else enabled = 0;