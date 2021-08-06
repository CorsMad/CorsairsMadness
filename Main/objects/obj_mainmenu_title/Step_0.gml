/// @description Insert description here
// You can write your code in this editor
t++;
if t = 100 
{
	isOn = 1;	
}

if isOn = 1 && t < 220
{
	y = lerp(y,0,0.05);
}

if isOn = 1 && t = 220
{
	y = 0;	
	instance_create_depth(86,198,-1,obj_mainmenu_controller);
}