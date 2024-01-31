/// @description Insert description here
// You can write your code in this editor
if state = 1
{
    t++;
    if t = 120
    {
        fnc_msc_start_checkpoint(msc_jp1_c_jp2_c);
        instance_create_depth(144,336,0,obj_follower_grounded_cutscene);   
    }
    if t = 190 
    {
        if instance_exists(obj_Player)
        {
            obj_Player.image_xscale = -1;   
            obj_Player.vspd = -4;
        }
        t = 0;
        state = 0;   
    }
}

if state = 2
{
    
    t++
    if t = 60 
    {
        instance_create_depth(0,0,0,obj_text_f1_r33_cutscene2);
        //instance_destroy();
    }
}