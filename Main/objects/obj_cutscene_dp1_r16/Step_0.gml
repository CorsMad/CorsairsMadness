/// @description Insert description here
// You can write your code in this editor
if state = 0
{
    t++;
    if t = 120
    {
        fnc_msc_start_checkpoint(msc_jp1_c_jp2_c);
        instance_create_depth(176,144,-10,obj_follower_desert_cutscene);   
    }
    if t = 190 
    {
        if instance_exists(obj_Player)
        {
            obj_Player.image_xscale = -1;   
        }
        t = 0;
        state = 1;   
    }
}

if state = 2
{
    obj_Player.isDead = 2; 
    t++
    if t = 60 
    {
        instance_create_depth(0,0,-1000,obj_text_dp1_r16_cutscene);
        instance_destroy();
    }
}