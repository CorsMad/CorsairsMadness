/// @description Insert description here
// You can write your code in this editor

if t1 < 12
{
    t1++;
}

/*
if t1 = 10 room_goto(TutorFirstLoading);
*/

if t1 = 10
{   
    var i = instance_create_depth(16,16,0,obj_Player);
    i.DashEnabled = 1;
    i.state = 1;
    i.HookEnabled = 1;
    i.specabilnumber = 11;       
    instance_create_depth(16,16,101,obj_room_transition_to_loading);  

}

