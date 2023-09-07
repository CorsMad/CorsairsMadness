/// @description Insert description here
// You can write your code in this editor
if state = 1
{
    t++;
    switch(t)
    {
        case 10:  image_index = 1;break;   
        case 20 : image_index = 2;break;   
        case 30: image_index = 3;break;   
        case 40: image_index = 4;break;   
        case 50: 
            instance_create_depth(x,y-16,depth,obj_boss_se_phase2_1);   
			instance_create_depth(x,y+16,depth,obj_boss_se_phase2_2); 
            instance_destroy();
            break;   
    }
}