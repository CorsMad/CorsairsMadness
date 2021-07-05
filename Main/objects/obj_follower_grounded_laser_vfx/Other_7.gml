/// @description Insert description here
// You can write your code in this editor
if image_xscale = 1
{
    instance_create_depth(x+26,y-50,depth-1,obj_follower_grounded_laser_projectile);
}   else     instance_create_depth(x-26,y-50,depth-1,obj_follower_grounded_laser_projectile);

instance_destroy();