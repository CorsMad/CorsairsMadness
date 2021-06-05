/// @description Insert description here
// You can write your code in this editor

t++;
if t = t_max
{
	t = 0;
	switch(dir)
	{
		case "up":		instance_create_depth(x,y-4,-1,obj_sfx1);
						var a = instance_create_depth(x,y-8,1,obj_trapfire_arrow);
						a.a = 1; break;
		case "down":	instance_create_depth(x,y+4,-1,obj_sfx1);
						var b = instance_create_depth(x,y+8,1,obj_trapfire_arrow);
						b.a = 2; break;
		case "left":	instance_create_depth(x-4,y,-1,obj_sfx1);
						var c = instance_create_depth(x-10,y,1,obj_trapfire_arrow);
						c.a = 3; break;
		case "right":	instance_create_depth(x+4,y,-1,obj_sfx1);
						var d = instance_create_depth(x+10,y,1,obj_trapfire_arrow);
						d.a = 4; break;
	}
}