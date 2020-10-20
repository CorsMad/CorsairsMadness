/// @description Insert description here
// You can write your code in this editor
if isOn = 0 && place_meeting(x,y,obj_hitbox)
{
	for (var i = 0; i < 10 ;i++)
		{
			if round(i/2)*2 = i
			{ 
				instance_create_depth(x,y-16,-1,obj_money10);
			} else instance_create_depth(x,y-16,-2,obj_money1);
		}	
	isOn = 1;
	image_speed = 1;
}
if (image_index > image_number - 1) && isOn = 1
{
    image_speed = 0;
}



