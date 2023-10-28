/// @description Insert description here
// You can write your code in this editor


if state = 0{
    if instance_exists(obj_abil_flute_aoe)
    {
        if (place_meeting(x,y,obj_abil_flute_aoe) && obj_abil_flute_aoe.image_alpha = 1){
            state = 1;
            image_blend = c_white;
            image_speed = 1;  
            if instance_exists(obj_shroom_trigger) obj_shroom_trigger.result++;
        }
    }
}
