/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_Player)
{
    // dash TIP
    
    instance_create_depth(336,128,0,obj_popup_creator_usedash);
    
    obj_Player.DashEnabled = 1;
    global.dash = 1;
    instance_destroy();
    
}

y = y + cos(b)/2;
	b+= 0.05;