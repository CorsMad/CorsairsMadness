/// @description Insert description here
// You can write your code in this editor
if state = 0
{
    if instance_exists(obj_maze3_pic1) &&
    instance_exists(obj_maze3_pic2) &&
    instance_exists(obj_maze3_pic3) 
    {
        if image = 0
        {
            if  obj_maze3_pic1.image = 4  && obj_maze3_pic1.mov = 0 &&   
                obj_maze3_pic2.image = 12 && obj_maze3_pic2.mov = 0 && 
                obj_maze3_pic3.image = 4  && obj_maze3_pic3.mov = 0 
                {
                    mov = 1;   
                }
        }
    
        if image = 4
        {
            if  obj_maze3_pic1.image = 0   && obj_maze3_pic1.mov = 0 &&   
                obj_maze3_pic2.image = 8   && obj_maze3_pic2.mov = 0 && 
                obj_maze3_pic3.image = 12  && obj_maze3_pic3.mov = 0 
                {
                    mov = 1;   
                }
        }
    
        if image = 8
        {
            if  obj_maze3_pic1.image = 12  && obj_maze3_pic1.mov = 0 &&   
                obj_maze3_pic2.image = 0   && obj_maze3_pic2.mov = 0 && 
                obj_maze3_pic3.image = 0   && obj_maze3_pic3.mov = 0 
                {
                    state = 1;
                    t = 0;
                    obj_maze3_pic1.mov = 10;
                    obj_maze3_pic2.mov = 10;
                    obj_maze3_pic3.mov = 10;
                }
        }
    
    
        if mov=1 
        {
            t++;
            if t mod 5 = 0 image+=1;
            if t = 21 {t=0;mov=0;}
        }
    }
}


if state = 1
{
    t++;
    if t = 50 
    {        
        if instance_exists(obj_maze3_chest)
        {
            obj_maze3_chest.isOn = 1;   
        }
        t = 0;state = 2;
    }
    
    
}




    image_index = image;