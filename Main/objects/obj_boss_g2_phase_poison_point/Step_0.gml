

#region Коллизия
if place_meeting(x+spd, y, obj_skeleton_limiter)
	{
		spd = -spd;	
	}
	if place_meeting(x+spd, y, obj_block)
		{
		while (!place_meeting(x+sign(spd), y, obj_block )) 
		{
		    x+= sign(spd);
		}
	
		spd = -spd;
	}
	x += spd;

	if place_meeting(x, y+vspd, obj_block) 
	{
	    while (!place_meeting(x,y+sign(vspd), obj_block )) 
		{
	        y+= sign(vspd);
	    }
	    vspd = 0;
	}
	y += vspd;

	if !place_meeting(x,y+vspd, obj_block)
	{
		vspd +=0.2;	
	}
	if place_meeting(x,y, obj_skeleton_jump_block)
	{
		vspd = -4;	
	}
#endregion

#region Взаимодействие

if place_meeting(x,y+1,obj_block)
{
    fnc_snd_play_onetime(snd_vase_destruct)
	instance_destroy();
	var pois_r = instance_create_depth(x,256,depth+1,obj_boss_g2_phase_poison)
	pois_r.dir = 1;
	pois_r.num = 2;
	pois_r.horiz = 1;
	var pois_l = instance_create_depth(x,256,depth+1,obj_boss_g2_phase_poison)
	pois_l.dir = -1;
	pois_l.num = 2;
	pois_l.horiz = 1;
}

if place_meeting(x+sign(spd),y,obj_block)
{
	fnc_snd_play_onetime(snd_vase_destruct)
	if spd > 0 var pois_down = instance_create_depth(448,y,depth+1,obj_boss_g2_phase_poison) else
	{instance_create_depth(16,y,depth+1,obj_boss_g2_phase_poison)}
	
	pois_down.dir = 1;
	pois_down.horiz = 0;
	pois_down.num = 3;
	instance_destroy();
}
#endregion

