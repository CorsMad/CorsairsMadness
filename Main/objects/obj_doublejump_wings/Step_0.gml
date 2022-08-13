/// @description Insert description here
// You can write your code in this editor
t++;

switch(t)
{
    case 1: instance_create_depth(x+sign(image_xscale)*16,y-6,depth,obj_doublejump_blob);   
            instance_create_depth(x-sign(image_xscale)*16,y-6,depth,obj_doublejump_blob);
            instance_create_depth(x+sign(image_xscale)*24,y-12,depth,obj_doublejump_blob);   
            instance_create_depth(x-sign(image_xscale)*24,y-12,depth,obj_doublejump_blob);
            instance_create_depth(x+sign(image_xscale)*32,y-24,depth,obj_doublejump_blob);   
            instance_create_depth(x-sign(image_xscale)*32,y-24,depth,obj_doublejump_blob);
            break;
    case 10:image_alpha =1;break;
}
if image_index = 6 
{
    image_index = 4;   
}

if t > 20
{
    image_alpha -= 0.1;   
}
if image_alpha <=0 
{
    instance_destroy();   
}