/// @description Insert description here
// You can write your code in this editor

#region Not Working
if Working = 0
{
    t++;
    switch(t)
    {
        case 5: image_index = 4;break;   
        case 10: image_index = 3;break;   
        case 15: image_index = 2;break;   
        case 20: image_index = 1;break;   
        case 25: 
            image_index = 0;
            instance_create_depth(175,111,depth-1,obj_maze2_but1);
            instance_create_depth(218,111,depth-1,obj_maze2_but2);
            instance_create_depth(265,111,depth-1,obj_maze2_but3);
            instance_create_depth(308,111,depth-1,obj_maze2_but4);
            
            instance_create_depth(186,164,depth-1,obj_maze2_button1);
            instance_create_depth(219,164,depth-1,obj_maze2_button2);
            instance_create_depth(253,164,depth-1,obj_maze2_button3);
            instance_create_depth(286,164,depth-1,obj_maze2_button4);
            
            instance_create_depth(175,146,depth-1,obj_maze2_solve1);
            instance_create_depth(218,147,depth-1,obj_maze2_solve2);
            instance_create_depth(265,147,depth-1,obj_maze2_solve3);
            instance_create_depth(308,148,depth-1,obj_maze2_solve4);             
            
            
            
            break; 
        case 30:
            t = 0;
            Working = 1;
            break;
    }
}
#endregion

#region Working
if Working = 1
{

if  instance_exists(obj_maze2_but1) &&
    instance_exists(obj_maze2_but2) &&
    instance_exists(obj_maze2_but3) &&
    instance_exists(obj_maze2_but4) 
{
    if puzzlen = 0
    {
        t++;
        if t = 50
        {
            t = 0;
            puzzlen = 1;
            obj_maze2_but1.sw = 1;
            obj_maze2_but2.sw = 0;
            obj_maze2_but3.sw = 1;
            obj_maze2_but4.sw = 0;
            goal = 0;
            instance_create_depth(0,0,0,obj_maze2_controller1);
            instance_create_depth(0,182,depth-1,obj_maze2_pointer);
        }
    }
    
    if puzzlen = 1
    {
        obj_maze2_solve1.on = 1;
        if  obj_maze2_but1.sw = 1 &&
            obj_maze2_but2.sw = 0 &&
            obj_maze2_but3.sw = 0 &&
            obj_maze2_but4.sw = 0
            {
                puzzlen = 1.25;
                t = 0;
                instance_destroy(obj_maze2_controller1);
                instance_destroy(obj_maze2_pointer);
            }
    }
    
    if puzzlen = 1.25 // Победное мерцание
    {
        t++; 
        switch(t)
        {
            case 1:
            obj_maze2_but1.sw = 1;
            obj_maze2_but2.sw = 0;
            obj_maze2_but3.sw = 0;
            obj_maze2_but4.sw = 0;   
            break;
            case 50:
            obj_maze2_but1.sw = 1;
            obj_maze2_but2.sw = 1;
            obj_maze2_but3.sw = 1;
            obj_maze2_but4.sw = 1;   
            break;
            case 100:
            obj_maze2_but1.sw = 1;
            obj_maze2_but2.sw = 0;
            obj_maze2_but3.sw = 0;
            obj_maze2_but4.sw = 0;   
            break;
            case 150:
            obj_maze2_but1.sw = 1;
            obj_maze2_but2.sw = 1;
            obj_maze2_but3.sw = 1;
            obj_maze2_but4.sw = 1;   
            break;
            case 200:
            obj_maze2_but1.sw = 0;
            obj_maze2_but2.sw = 0;
            obj_maze2_but3.sw = 0;
            obj_maze2_but4.sw = 0;   
            break;
            case 250:
            t = 0;
            puzzlen = 1.5;
            break;
        }
    }
    
    if puzzlen = 1.5
    {
        obj_maze2_solve1.on = 0;
        t++;
        if t = 50
        {
            t = 0;
            puzzlen = 2;
            obj_maze2_but1.sw = 0;
            obj_maze2_but2.sw = 0;
            obj_maze2_but3.sw = 0;
            obj_maze2_but4.sw = 0;
            goal = 1;
            instance_create_depth(0,0,0,obj_maze2_controller1);
            instance_create_depth(0,182,depth-1,obj_maze2_pointer);
        }
    }
    
    if puzzlen = 2
    {
        obj_maze2_solve2.on = 1;
        if  obj_maze2_but1.sw = 0 &&
            obj_maze2_but2.sw = 1 &&
            obj_maze2_but3.sw = 0 &&
            obj_maze2_but4.sw = 0
            {
                puzzlen = 2.25;
                instance_destroy(obj_maze2_controller1);
                instance_destroy(obj_maze2_pointer);
            }
    }
    
    if puzzlen = 2.25 // Победное мерцание
    {
        t++; 
        switch(t)
        {
            case 1:
            obj_maze2_but1.sw = 0;
            obj_maze2_but2.sw = 1;
            obj_maze2_but3.sw = 0;
            obj_maze2_but4.sw = 0;   
            break;
            case 50:
            obj_maze2_but1.sw = 1;
            obj_maze2_but2.sw = 1;
            obj_maze2_but3.sw = 1;
            obj_maze2_but4.sw = 1;   
            break;
            case 100:
            obj_maze2_but1.sw = 0;
            obj_maze2_but2.sw = 1;
            obj_maze2_but3.sw = 0;
            obj_maze2_but4.sw = 0;   
            break;
            case 150:
            obj_maze2_but1.sw = 1;
            obj_maze2_but2.sw = 1;
            obj_maze2_but3.sw = 1;
            obj_maze2_but4.sw = 1;   
            break;
            case 200:
            obj_maze2_but1.sw = 0;
            obj_maze2_but2.sw = 0;
            obj_maze2_but3.sw = 0;
            obj_maze2_but4.sw = 0;   
            break;
            case 250:
            t = 0;
            puzzlen = 2.5;
            break;
        }
    }    
    
    
    if puzzlen = 2.5
    {
        obj_maze2_solve2.on = 0;
        t++;
        if t = 50
        {
            t = 0;
            puzzlen = 3;
            obj_maze2_but1.sw = 0;
            obj_maze2_but2.sw = 1;
            obj_maze2_but3.sw = 0;
            obj_maze2_but4.sw = 0;
            goal = 3;
            instance_create_depth(0,0,0,obj_maze2_controller1);
            instance_create_depth(0,182,depth-1,obj_maze2_pointer);
        }
    }
    
    if puzzlen = 3
    {
        obj_maze2_solve3.on = 1;
        if  obj_maze2_but1.sw = 0 &&
            obj_maze2_but2.sw = 0 &&
            obj_maze2_but3.sw = 1 &&
            obj_maze2_but4.sw = 0
            {
                puzzlen = 3.5;
                instance_destroy(obj_maze2_controller1);
                instance_destroy(obj_maze2_pointer);
                t = 0;
            }
    }
    
    if puzzlen = 3.5 // Победное мерцание
    {
        t++; 
        switch(t)
        {
            case 1:
            obj_maze2_but1.sw = 0;
            obj_maze2_but2.sw = 0;
            obj_maze2_but3.sw = 1;
            obj_maze2_but4.sw = 0;   
            break;
            case 50:
            obj_maze2_but1.sw = 1;
            obj_maze2_but2.sw = 1;
            obj_maze2_but3.sw = 1;
            obj_maze2_but4.sw = 1;   
            break;
            case 100:
            obj_maze2_but1.sw = 0;
            obj_maze2_but2.sw = 0;
            obj_maze2_but3.sw = 1;
            obj_maze2_but4.sw = 0;   
            break;
            case 150:
            obj_maze2_but1.sw = 1;
            obj_maze2_but2.sw = 1;
            obj_maze2_but3.sw = 1;
            obj_maze2_but4.sw = 1;   
            break;
            case 200:
            obj_maze2_but1.sw = 0;
            obj_maze2_but2.sw = 0;
            obj_maze2_but3.sw = 0;
            obj_maze2_but4.sw = 0;   
            break;
            case 250:
            Working = 2;
            t = 0;
            break;
        }
    }

}
}
#endregion

#region Выход

if (Working = 2) {
    t++;
    switch(t)
    {        
        case 5: 
            image_index = 1;
            instance_destroy(obj_maze2_but1);
            instance_destroy(obj_maze2_but2);
            instance_destroy(obj_maze2_but3);
            instance_destroy(obj_maze2_but4);
            instance_destroy(obj_maze2_button1);
            instance_destroy(obj_maze2_button2);
            instance_destroy(obj_maze2_button3);
            instance_destroy(obj_maze2_button4);           
            instance_destroy(obj_maze2_solve1);
            instance_destroy(obj_maze2_solve2);
            instance_destroy(obj_maze2_solve3);
            instance_destroy(obj_maze2_solve4);
            break;
        case 10: image_index =2;break;
        case 15: image_index =3;break;
        case 20: image_index =4;break;
        case 25: image_index =5;break;
        case 30: 
        // ОТКРЫТИЕ ДВЕРИ
        obj_maze2_starter.isOn = 0;        
        obj_wall_trigger_close1_l1_r17.state = 2;
        obj_wall_trigger_close1_l1_r17.t = 0;
        obj_npc_vulcano_mazeskeleton.talkNumber = 2;
        obj_Player.isDead = 2.1;    
        instance_destroy();
        break;
              
    }
}
#endregion