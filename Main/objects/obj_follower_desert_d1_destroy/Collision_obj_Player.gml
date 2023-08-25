/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_follower_desert_d1)
{
    obj_follower_desert_d1.dead = 1;  
    obj_follower_desert_d1.t = 0;
    instance_destroy();
}
