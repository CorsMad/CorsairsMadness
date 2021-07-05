/// @description Insert description here
// You can write your code in this editor
t++;
if t = 5
{
    if image_xscale = 1
    {
        instance_create_depth(x+21,y,depth+1,obj_follower_grounded_slam_projectile_l);
        instance_create_depth(x+21,y,depth+1,obj_follower_grounded_slam_projectile_r);
    } else  {
                instance_create_depth(x-21,y,depth+1,obj_follower_grounded_slam_projectile_l);
                instance_create_depth(x-21,y,depth+1,obj_follower_grounded_slam_projectile_r);
            }
}