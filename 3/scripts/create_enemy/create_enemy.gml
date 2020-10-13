// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function create_enemy(obj_cr,x_cr,y_cr,hor_spd,vert_spd)
{
	switch(obj_cr)
	{
		case obj_skeleton: var a = instance_create_depth(x_cr,y_cr,1,obj_skeleton);
						   a.hspd = hor_spd;
						   break;
		case obj_snake:    var a = instance_create_depth(x_cr,y_cr,1,obj_snake);
						   a.spd = hor_spd;
						   break;			   
	}
}