/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_Player)
{
    fnc_snd_play_over(snd_ability_gain);
    if instance_exists(obj_Player)
    {
        obj_Player.SpecAbilMask = 5;   
    }
    instance_create_depth(x-12,y-12,depth-1,obj_sfx2);
    instance_create_depth(x+12,y-12,depth-1,obj_sfx2);
    instance_create_depth(x-12,y+12,depth-1,obj_sfx2);
    instance_create_depth(x+12,y+12,depth-1,obj_sfx2);
    instance_create_depth(336,128,0,obj_popup_creator_useclone);
    instance_destroy();    
}

y = y + cos(b)/2;
	b+= 0.05;