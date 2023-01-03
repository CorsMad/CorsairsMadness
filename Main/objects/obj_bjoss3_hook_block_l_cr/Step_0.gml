/// @description Insert description here
// You can write your code in this editor

if state = 1
{
    y+= 7;
    if y >= 176-7
    {
        y = 176;
        instance_create_depth(x,y,depth+1,obj_bjoss3_hook_block_l);
        state = 2;
        image_index = 1;
    }
}

if state = 3
{
    instance_destroy(obj_bjoss3_hook_block_l);
    image_index = 0;
    y-=7;
    if y <= -48+7 state = 0;
}