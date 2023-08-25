/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_Player)
{
    if obj_Player.clone_timer = 0 && obj_Player.isDead!= 131 && obj_Player.isDead!=132
    {
        var f = instance_create_depth(1184,352,0,obj_follower_snow);        
        f.start_y=256;
        instance_destroy();   
    }
}
