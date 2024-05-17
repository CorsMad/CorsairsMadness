/// @description Insert description here
// You can write your code in this editor

if pressed = 0 && place_meeting(x,y,obj_Player){
    fnc_snd_play_onetime(snd_spikes_trap_activation) 
    pressed = 1;
}
if !place_meeting(x,y,obj_Player) pressed = 0;

if place_meeting(x,y,obj_Player)
{
    image_index = 1;
    if instance_exists(obj_platform_3_v_activate_d1r11)
    {
        with(obj_platform_3_v_activate_d1r11)
        {
            if y < 784
            {
                y+=1;
            }
        }        
    }
}   else image_index = 0;
