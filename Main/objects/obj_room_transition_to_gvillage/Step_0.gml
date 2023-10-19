/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_cutscene_JVArrive_player_draw)
{
    fnc_msc_stop_play();
    var i = instance_create_depth(-16,-16,0,obj_Player);
    i.state = 0;
    instance_create_depth(-16,-16,101,obj_room_transition_to_loading); 
    global.TargetRoom = Village_shadow;
    global.TargetX = 32;
    global.TargetY = 240;
    instance_destroy();
    
}
