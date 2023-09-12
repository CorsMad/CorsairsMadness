/// @description Insert description here
// You can write your code in this editor
t++;
if t = 50
{
    global.completed_JF2 = 1;
    var pl = instance_create_depth(96,239,0,obj_Player)
    pl.DashEnabled = 1;
    pl.state = 0;
    pl.specabilnumber = 1;
    pl.HookEnabled = 0;
    pl.SpecAbilMask = 2;       
    room_goto(Village_jungle_merchant);  
}