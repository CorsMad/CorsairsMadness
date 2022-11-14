/// @description Insert description here
// You can write your code in this editor


t++;
if t = 100 
{
    if x > room_width/2 
    {
        var b1 = instance_create_depth(576,y,0,obj_bossj2_phase_between)   
        b1.hspd = -6;
        b1.future_state = future_state;
    } else
    {
        var b2 = instance_create_depth(-100,y,0,obj_bossj2_phase_between)   
        b2.hspd = 6;  
        b2.future_state = future_state;
    }
    
    instance_destroy();
}
