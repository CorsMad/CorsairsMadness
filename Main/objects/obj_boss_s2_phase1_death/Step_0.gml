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

if state = 0
{
    if place_meeting(x,y+1,obj_block)
    {
        t++;   
    }
    switch(t)
    {
        case 20:    image_blend = c_white;break;
        case 50:    image_index = 1;break;
        case 70:   
            instance_create_depth(x-30*sign(image_xscale),y,depth-2,obj_sfx3);
            instance_create_depth(x-30*sign(image_xscale),y,depth-1,obj_sfx4);
            for (var m = 0; m < 28; m+=1) {
            instance_create_depth(24+16*m,224+8,-1,obj_sfx_dust_expl_small);}            
            image_index = 2;
            break;
        case 100:   image_index = 1;break;
        case 120:   
            instance_create_depth(x-30*sign(image_xscale),y,depth-2,obj_sfx3);
            instance_create_depth(x-30*sign(image_xscale),y,depth-1,obj_sfx4);
            for (var m = 0; m < 28; m+=1) {
            instance_create_depth(24+16*m,224+8,-1,obj_sfx_dust_expl_small);} 
            image_index = 2;
            break;
        case 150:   image_index = 1;break;
        case 170:   
            instance_create_depth(x-30*sign(image_xscale),y,depth-2,obj_sfx3);
            instance_create_depth(x-30*sign(image_xscale),y,depth-1,obj_sfx4);
            for (var m = 0; m < 28; m+=1) {
            instance_create_depth(24+16*m,224+8,-1,obj_sfx_dust_expl_small);} 
            image_index = 2;
            break;
        case 180: 
            obj_camera_boss_s2.state = 1;
            obj_snow_boss_controller.state = 1;
            state = 1;
            depth = 200;
            t = 0;
            image_index = 0;
            break;
    }
}

if state = 3
{
    if place_meeting(x,y+1,obj_block)
    {
        instance_create_depth(x,y,0,obj_skeleton_bone);  
        instance_create_depth(x,y,0,obj_skeleton_bone);  
        instance_create_depth(x,y,0,obj_skeleton_bone);  
        instance_create_depth(x,y,0,obj_skeleton_bone);  
        instance_create_depth(x,y,0,obj_skeleton_bone);  
        instance_create_depth(x,y,0,obj_skeleton_bone);  
        instance_create_depth(x,y,0,obj_skeleton_bone);  
        instance_create_depth(x,y,0,obj_skeleton_bone);
        instance_create_depth(x,y,-1,obj_sfx_dust_expl_big);
        instance_create_depth(x,y,-1,obj_boss_s2_phase2_appear);
        instance_destroy();
    }
}
