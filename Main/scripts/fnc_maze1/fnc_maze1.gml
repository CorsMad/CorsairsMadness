// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fnc_maze1()
{
    if isOff = 0
    {
        if a = 1
        {
            image_angle += 5;
            if image_angle = 0
            {
                a = 0;
                b = 0;
            }
            if image_angle = 90
            {
                isOn = 0;
                a = 0;
                b = 1;
            }
            if image_angle = 180
            {
                isOn = 0;
                a = 0;
                b = 2;
            }
            if image_angle = 270
            {
                isOn = 0;
                a = 0;
                b = 3;
            }
        }
        if image_angle >360
        {
            image_angle = 0;
            a = 0;
            b = 0;
        }

        if image_angle = 0 
        {
            isOn = 1;   
        } else isOn = 0;
    
        if instance_exists(obj_maze1_1) && instance_exists(obj_maze1_2) && instance_exists(obj_maze1_3) && instance_exists(obj_maze1_4)
        {
            if obj_maze1_1.isOn = 1 && obj_maze1_2.isOn = 1 &&  obj_maze1_3.isOn = 1 &&  obj_maze1_4.isOn = 1
            {
                isOff = 1;
            }
        }   
    }
}

function fnc_maze1_triggers(obj_maze1_choose)
{
    if isOn = 1
    {
        if place_meeting(x,y,obj_hitbox) && t = 0
        {
            if instance_exists(obj_maze1_choose)
            {
                instance_create_depth(x,y,-1,obj_sfx_weapon_slash);
                obj_maze1_choose.a = 1;
                t = 1;
            }
        }   

        if t!=0
        {
            t++;  
            image_speed = 2;
        }
        if t = 22
        {
            t = 0;  
            image_speed = 0;
            image_index = 0;
        }
        
        if instance_exists(obj_maze1_1) && instance_exists(obj_maze1_2) && instance_exists(obj_maze1_3) && instance_exists(obj_maze1_4)
        {
            if obj_maze1_1.isOn = 1 && obj_maze1_2.isOn = 1 &&  obj_maze1_3.isOn = 1 &&  obj_maze1_4.isOn = 1
            {
                isOn = 0;
                image_index = 0;
                image_speed = 0;
            }
        }   
        
        
    }
}