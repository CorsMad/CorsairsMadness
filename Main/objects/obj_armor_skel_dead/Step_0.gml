/// @description Insert description here
// You can write your code in this editor

t++;
if t = 1 || t = 10 || t = 20 || t = 30 || t = 40
{
    instance_create_depth(x+choose(-6,6),y+choose(-16,-18),depth-1,obj_sfx_sparkle_1);     
}
if t mod 5 = 0 
{
    var b = instance_create_depth(x,y-24,1,obj_skeleton_bone);  
    b.image_alpha = 0.5;
}
if t = 41 instance_destroy();
