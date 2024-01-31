/// @description Insert description here
// You can write your code in this editor


y+=vspd;
vspd = lerp(vspd,0,0.05);
t++
{
    if t mod 5 == 0
    {
        instance_create_depth(x+choose(-6,6),y+choose(-2,-12),depth-1,obj_sfx_sparkle_1);    
    }
}
if t = 20 image_alpha = 0.2;
if t = 41
{
    instance_destroy();   
}



if t mod 10 = 0 instance_create_depth(x,y-16,depth-1,obj_sfx_sparkle_1);
