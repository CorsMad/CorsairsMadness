/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_cutscene_DI_player_p_r3_presave)
{
    var i = instance_create_depth(16,16,0,obj_Player);
    i.DashEnabled = 1;
    i.state = 1;
    i.HookEnabled = 1;
    i.SpecAbilMask = 2;       
    instance_create_depth(16,16,101,obj_room_transition_to_loading);      
    instance_destroy();
    global.fTargetRoom = TargetRoom;
    global.fTargetX = TargetX;
    global.fTargetY = TargetY;
    
    
}

