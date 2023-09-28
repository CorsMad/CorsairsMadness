/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_cutscene_DI_player_p_r10_end)
{   
    instance_destroy();
    global.fTargetRoom = DI_prebossfight;
    global.fTargetX = 48;
    global.fTargetY = 3984;
    var i = instance_create_depth(-16,-16,0,obj_Player);
    i.state = 1;
    i.specabilnumber = 3;
    i.SpecAbilMask = 3;  
    i.DashEnabled = 1;
    instance_create_depth(-16,-16,101,obj_room_transition_to_loading); 
    
}

