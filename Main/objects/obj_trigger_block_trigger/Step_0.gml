/// @description Insert description here
// You can write your code in this editor
if state = 0
{

    if place_meeting(x,y,obj_hitbox) || place_meeting(x,y,obj_item_boomerang)
    {
        if instance_exists(obj_trigger_block)
        {
            if obj_trigger_block.isOn = 0
            {
                instance_create_depth(obj_trigger_block.x+0,obj_trigger_block.y+8,obj_trigger_block.depth-1,obj_sfx_dust_expl_small);  
                instance_create_depth(obj_trigger_block.x+48,obj_trigger_block.y+8,obj_trigger_block.depth-1,obj_sfx_dust_expl_small);  
            }
            obj_trigger_block.isOn = 1;
            obj_trigger_block.t = 0;     
        }
        state = 1;
        instance_create_depth(x+8,y+11,depth-1,obj_sfx3);
        fnc_snd_play_over(snd_player_landing);
    }
    
}

if state = 1
{
    t++;
    
    if t = 100
    {
        t = 0;
        state = 0;
    } 
}

#region анимация

if t = 0
{
    image_index = 0;       
}

if t > 0 && t < 95
{
    image_index = 2;   
}

if t >= 95
{
    image_index = 1;   
}


#endregion