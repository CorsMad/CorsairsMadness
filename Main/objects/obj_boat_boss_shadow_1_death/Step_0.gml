/// @description Insert description here
// You can write your code in this editor
if t mod 5 = 0
{
    instance_create_depth(x+random_range(-32,58),y+random_range(-36,38),-1000,obj_sfx_explosion)   ;
}
t++;
if t = 100 
{
    instance_create_depth(x,y,depth,obj_boat_boss_shadow_2)   ;
    instance_destroy();
}