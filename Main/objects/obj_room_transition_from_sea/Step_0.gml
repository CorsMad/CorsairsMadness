/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_cutscene_JVArrive_player_draw)
{
    instance_destroy();
    var i = instance_create_depth(-16,-16,0,obj_Player);
    i.state = 0;
    i.specabilnumber = specabilnumber;
    instance_create_depth(-16,-16,101,obj_room_transition_to_loading); 
    global.TargetRoom = TargetRoom;
    global.TargetX = TargetX;
    global.TargetY = TargetY;
    
    
}


if place_meeting(x,y,obj_cutscene_DIArrive_player_draw)
{
    instance_destroy();
    var i = instance_create_depth(-16,-16,0,obj_Player);
    i.state = 0;
    i.specabilnumber = specabilnumber;
    instance_create_depth(-16,-16,101,obj_room_transition_to_loading); 
    global.TargetRoom = TargetRoom;
    global.TargetX = TargetX;
    global.TargetY = TargetY;  
}
