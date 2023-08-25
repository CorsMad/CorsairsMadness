/// @description Insert description here
// You can write your code in this editor
t++;
if t = 50
{
    global.completed_PL2 = 1;
    var pl = instance_create_depth(240,240,0,obj_Player)
    pl.DashEnabled = 1;
    pl.state = 0;
    pl.specabilnumber = 3;
    pl.HookEnabled = 0;
    pl.SpecAbilMask = 2;       
    room_goto(Village_lava_hall_store);  
}