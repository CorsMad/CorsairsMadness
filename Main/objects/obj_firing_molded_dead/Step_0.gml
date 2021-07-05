/// @description Insert description here
// You can write your code in this editor
t++;
cr++;
if t  < 12 
{
    if cr mod 5 == 0
    {
        instance_create_depth(x+choose(-6,6),y+choose(-16,-18),depth-1,obj_sfx_sparkle_1); 
        
    }
}

    if t > 12 && t < 24
    {   
        if cr mod 5 == 0
        {
                 
            instance_create_depth(x+choose(-6,6),y+choose(-14,-16),depth-1,obj_sfx_sparkle_1);
        }
    }
    
     if t > 24 && t < 36
    {
        if cr mod 5 == 0
        {
            instance_create_depth(x+choose(-6,6),y+choose(-8,-12),depth-1,obj_sfx_sparkle_1);  
        }
    }
    
     if t > 36 
    {
        if cr mod 5 == 0
        {
             instance_create_depth(x+choose(-6,6),y+choose(2,-2),depth-1,obj_sfx_sparkle_1);    
        }
    }       

