
hspd = lerp(hspd,0,0.05);
#region Коллизия

	if place_meeting(x+hspd, y, obj_block)
		{
		while (!place_meeting(x+sign(hspd), y, obj_block )) 
		{
		    x+= sign(hspd);
		}
	
		hspd = -hspd;
	}
	x += hspd;

	if place_meeting(x, y+vspd, obj_block) 
	{
	    while (!place_meeting(x,y+sign(vspd), obj_block )) 
		{
	        y+= sign(vspd);
	    }
	    vspd = 0;
	}
	y += vspd;

	if !place_meeting(x,y+vspd, obj_block) && abs(hspd)<0.2
	{
		vspd +=0.2;	
	}
#endregion

#region Взаимодействие

if place_meeting(x,y+1,obj_block)
{
	instance_destroy();
	var pois_r = instance_create_depth(x,y,depth+1,obj_boss_g2_phase_poison)
	pois_r.dir = 1;
	pois_r.num = 2;
	pois_r.horiz = 1;
	var pois_l = instance_create_depth(x,y,depth+1,obj_boss_g2_phase_poison)
	pois_l.dir = -1;
	pois_l.num = 2;
	pois_l.horiz = 1;
}

if place_meeting(x+sign(hspd),y,obj_block)
{
	instance_destroy();
	var pois_down = instance_create_depth(x,y,depth+1,obj_boss_g2_phase_poison)
	pois_down.dir = 1;
	pois_down.horiz = 0;
	pois_down.num = 3;
}
#endregion

