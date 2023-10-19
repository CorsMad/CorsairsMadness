/// @description Insert description here
// You can write your code in this editor


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

	if !place_meeting(x,y+vspd, obj_block)
	{
		vspd +=0.2;	
	}
#endregion

if state = 3
{
    if place_meeting(x,y+1,obj_block)
    {
        fnc_snd_play_onetime(snd_boss_expl);
        instance_create_depth(x,y,0,obj_skeleton_bone);  
        instance_create_depth(x,y,0,obj_skeleton_bone);  
        instance_create_depth(x,y,0,obj_skeleton_bone);  
        instance_create_depth(x,y,0,obj_skeleton_bone);  
        instance_create_depth(x,y,0,obj_skeleton_bone);  
        instance_create_depth(x,y,0,obj_skeleton_bone);  
        instance_create_depth(x,y,0,obj_skeleton_bone);  
        instance_create_depth(x,y,0,obj_skeleton_bone);
        instance_create_depth(x,y,-1,obj_sfx_dust_expl_big);
        instance_create_depth(x,y-24,-1,obj_boss_se2_phase2_appear);
        instance_destroy();
    }
}
