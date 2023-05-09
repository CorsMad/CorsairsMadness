/// @description Insert description here
// You can write your code in this editor

if image_alpha < 1
{
    image_alpha+=0.1;   
}

if pos = -1
{
    image_xscale = -1;
}

if pos = 1
{   
    
    
        
    
        
    t++;
    switch(t)
    {
        case 10:    image_index = 1;break;   
        case 20:    image_index = 2;break;   
        case 30:    image_index = 3;break;   
        case 40:    image_index = 4;break;   
        case 60:    
            rotate = 1;
            break;
        case 140: 
        var l_aoe = instance_create_depth(0,0,depth,obj_boss_l1_laserbeam_aoe);
        l_aoe.pos = -1;
        l_aoe.image_xscale = -1;
        break;
    }
    if rotate = 1
    {
        image_angle -=0.5;  
    }
    
    if image_angle <= -90
    {
        var cr_r = instance_create_depth(x,y,depth,obj_boss_l1_laserbeam); 
        cr_r.pos = 1;
        rotate = 0
        instance_destroy();
    }
}
if pos = -1
{
    image_xscale = -1;
    t++;
    switch(t)
    {
        case 10:    image_index = 1;break;   
        case 20:    image_index = 2;break;   
        case 30:    image_index = 3;break; 
        case 40:    image_index = 4;break;
        case 60:       
            rotate = 1;
            break;  
        case 140: 
        var r_aoe = instance_create_depth(480,0,depth,obj_boss_l1_laserbeam_aoe);
        r_aoe.pos = 1;
        break;
    }
    if rotate = 1
    {
        image_angle +=0.5;  
    }
    
    if image_angle >= 90
    {
        var cr_l = instance_create_depth(x,y,depth,obj_boss_l1_laserbeam); 
        cr_l.pos = -1;
        rotate = 0
        instance_destroy();
    }
}

