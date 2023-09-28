/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_cutscene_DI_player_p_r6_end)
{   
    instance_destroy();
    var i = instance_create_depth(-16,-16,0,obj_Player);
    i.state = 0;
    i.specabilnumber = 2;
    instance_create_depth(-16,-16,101,obj_room_transition_to_loading); 
    global.TargetRoom = DI_h_r7;
    global.TargetX = 32;
    global.TargetY = 128;
}

