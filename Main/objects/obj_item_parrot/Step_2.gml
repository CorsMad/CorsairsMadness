/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Player)
{
    switch(obj_Player.image_xscale)
    {
        case -1:
            orient = -1;
            x = lerp(x,obj_Player.x+32,0.1);
            y = lerp(y,obj_Player.y-48,0.1);            
            break;
        case 1:
            orient = 1;
            x = lerp(x,obj_Player.x-32,0.1);
            y = lerp(y,obj_Player.y-48,0.1);
            break;        
    }
} else instance_destroy();