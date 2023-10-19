/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_Player)
{
    if instance_exists(obj_lava_rising)   
    {
        obj_lava_rising.isOn = 1;   
        if instance_exists(obj_cutscene_l1_r_16_screenshake){
            fnc_snd_play_onetime(snd_lava_start);
            obj_cutscene_l1_r_16_screenshake.state = 1;   
        }
        if instance_exists(obj_cutscene_l2_r_7_screenshake){
            fnc_snd_play_onetime(snd_lava_start);
            obj_cutscene_l2_r_7_screenshake.state = 1;   
        }
        if instance_exists(obj_cutscene_l2p_r_5_screenshake){
            fnc_snd_play_onetime(snd_lava_start);
            obj_cutscene_l2p_r_5_screenshake.state = 1;   
        }
    }
    instance_destroy();
}