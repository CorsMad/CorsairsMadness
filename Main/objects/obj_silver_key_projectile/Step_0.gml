/// @description Insert description here
// You can write your code in this editor
if isOn = 1
{
	x = lerp(x,obj_Player.x,0.05);
	y = lerp(y,obj_Player.y-8,0.05);
}

if isOn = 0 
{
	
	a++;
	image_alpha -= 0.1;
	if a = 1
	{
		instance_create_depth(x,y,-1,obj_sfx3);	
	}
	if image_alpha <=0 
	{
		instance_destroy();	
	}
}