/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_Player)
{
    // dash TIP
    
    instance_create_depth(192,48,0,obj_popup_creator_usedash);
    
    fnc_snd_play_over(snd_ability_gain);
    obj_Player.DashEnabled = 1;
    instance_create_depth(x-12,y-12,depth-1,obj_sfx2);
    instance_create_depth(x+12,y-12,depth-1,obj_sfx2);
    instance_create_depth(x-12,y+12,depth-1,obj_sfx2);
    instance_create_depth(x+12,y+12,depth-1,obj_sfx2);
    instance_destroy();
    global.dash = 1;
}

y = y + cos(b)/2;
	b+= 0.05;