/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_Player)
{
    fnc_msc_stop_play();
    if obj_Player.clone_timer = 0 && obj_Player.isDead!= 131 && obj_Player.isDead!=132
    {
        var fol = instance_create_depth(912,352,0,obj_follower_snow);
        fol.start_y = 240;
        fol.vspd = -8;
        instance_destroy();   
    }
}
