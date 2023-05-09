/// @description Insert description here
// You can write your code in this editor
hspd = 0;
vspd = 0;
fade = 0;
t = 0;
image_speed = 0;
image_angle = choose(0,90,180,270);
image_index = choose(0,1,2);
if instance_exists(obj_Player)
{
    depth = choose(obj_Player.depth+1,obj_Player.depth-1);   
}