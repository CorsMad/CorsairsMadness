/// @description Insert description here
// You can write your code in this editor

t++;
if t = t_max
{
	t = 0;
	switch(dir)
	{
		case "up":		instance_create_depth(x,y-4,depth-1,obj_sfx1);
						var a = instance_create_depth(x,y-8,depth-1,obj_trapfire_arrow);
						a.a = 1; break;
		case "down":	instance_create_depth(x,y+4,depth-1,obj_sfx1);
						var b = instance_create_depth(x,y+8,depth-1,obj_trapfire_arrow);
						b.a = 2; break;
		case "left":	instance_create_depth(x-4,y,depth-1,obj_sfx1);
						var c = instance_create_depth(x-10,y,depth-1,obj_trapfire_arrow);
						c.a = 3; break;
		case "right":	instance_create_depth(x+4,y,depth-1,obj_sfx1);
						var d = instance_create_depth(x+10,y,depth-1,obj_trapfire_arrow);
						d.a = 4; break;
	}
}

switch(t){
    case 1: image_index = 0;break;   
}

if t = 1 image_index = 0;
if (t = t_max-5 ) image_index = 5;
if (t = t_max-25 ) image_index = 4;
if (t = t_max-30 ) image_index = 3;
if (t = t_max-35 ) image_index = 2;
if (t = t_max-40 ) image_index = 1;