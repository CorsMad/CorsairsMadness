/// @description Insert description here
// You can write your code in this editor

if  instance_exists(obj_maze2_but1) &&
    instance_exists(obj_maze2_but2) &&
    instance_exists(obj_maze2_but3) &&
    instance_exists(obj_maze2_but4) 
{
    if puzzlen = 0
    {
        t++;
        if t = 100
        {
            t = 0;
            puzzlen = 1;
            obj_maze2_but1.sw = 1;
            obj_maze2_but2.sw = 0;
            obj_maze2_but3.sw = 1;
            obj_maze2_but4.sw = 0;
            goal = 0;
            instance_create_depth(0,0,0,obj_maze2_controller1);
        }
    }
    
    if puzzlen = 1
    {
        if  obj_maze2_but1.sw = 1 &&
            obj_maze2_but2.sw = 0 &&
            obj_maze2_but3.sw = 0 &&
            obj_maze2_but4.sw = 0
            {
                puzzlen = 1.5;
                instance_destroy(obj_maze2_controller1);
            }
    }
    
    if puzzlen = 1.5
    {
        t++;
        if t = 100
        {
            t = 0;
            puzzlen = 2;
            obj_maze2_but1.sw = 0;
            obj_maze2_but2.sw = 0;
            obj_maze2_but3.sw = 0;
            obj_maze2_but4.sw = 0;
            goal = 1;
            instance_create_depth(0,0,0,obj_maze2_controller1);
        }
    }
    
    if puzzlen = 2
    {
        if  obj_maze2_but1.sw = 0 &&
            obj_maze2_but2.sw = 1 &&
            obj_maze2_but3.sw = 0 &&
            obj_maze2_but4.sw = 0
            {
                puzzlen = 2.5;
                instance_destroy(obj_maze2_controller1);
            }
    }
    
    if puzzlen = 2.5
    {
        t++;
        if t = 100
        {
            t = 0;
            puzzlen = 3;
            obj_maze2_but1.sw = 0;
            obj_maze2_but2.sw = 1;
            obj_maze2_but3.sw = 0;
            obj_maze2_but4.sw = 0;
            goal = 3;
            instance_create_depth(0,0,0,obj_maze2_controller1);
        }
    }
    
    if puzzlen = 3
    {
        if  obj_maze2_but1.sw = 0 &&
            obj_maze2_but2.sw = 0 &&
            obj_maze2_but3.sw = 1 &&
            obj_maze2_but4.sw = 0
            {
                puzzlen = 3.5;
                instance_destroy(obj_maze2_controller1);
            }
    }

}