/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_Player)
{
    if obj_Player.isDead = 1 {
        obj_Player.tp = number;  
        if number!=0 {
            if number mod 2 = 0 
            {
                instance_create_depth(obj_Player.x,obj_Player.y-64,obj_Player.depth-1,obj_tp_1pr_green);   
            } else instance_create_depth(obj_Player.x,obj_Player.y-64,obj_Player.depth-1,obj_tp_1pr_blue);  
        }  
        instance_destroy();
    }
    
}