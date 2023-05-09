/// @description Insert description here
// You can write your code in this editor
if state = 0
{
    x+=spd;
    if spd < 0
    {
        if x <= 48
        {
            x = 48; 
            state = 1;
        }
    }
    if spd > 0
    {
        if x >= 432
        {
            x = 432; 
            state = 1;
        }   
    }
}

if state = 1 // ожадание
{
    t++;
    if t = 20
    {
        t =0;
        state = 2;
        if instance_exists(obj_boss_d2_phase1_1)
        {
            obj_boss_d2_phase1_1.mov = 1   
        } 
    }
}

if state = 2
{
    y+=2; 
    if place_meeting(x,y+1,obj_block)
    {
        state = 3;        
    }
}
if state = 3
{
    for (var e = 0; e<24; e+=1) {
        var ear = instance_create_depth(x+16+16*e,y,depth+1,obj_boss_d2_eath_proj);
        ear.hspd = random_range(-1,1);
        ear.vspd = random_range(-0.5,-2)
    }
    instance_destroy();    
}
