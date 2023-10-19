/// @description Insert description here
// You can write your code in this editor

y+=vspd;
if place_meeting(x,y,obj_bird_limiter) vspd = -vspd




if gravitate = 0
{
    if instance_exists(obj_Player)
    {
        if place_meeting(x,y,obj_Player) && obj_Player.isAttackingdown!=1
        {            
            obj_Player.isDashing = 0;
            gravitate = 1; 
            obj_Player.fspd = 0;
            obj_Player.vspd = 0;
        }
    }
}

if gravitate = 1
{
    
        obj_Player.x = lerp(obj_Player.x,x,0.2);   
        obj_Player.y = lerp(obj_Player.y,y+16,0.2);   
        obj_Player.fspd = 0;
        obj_Player.vspd = 0;
        obj_Player.dash_count= 1;
        obj_Player.dash_counts = 1;
        if obj_Player.isAttackingdown || obj_Player.isDashing = 1 || obj_Player.isTakingdmg = 1 
        {
            gravitate = 2;  
            t = 0;
        }   
        if obj_Player.key_jump
        {
            gravitate = 2;
            t = 0;
            obj_Player.vspd = -6;
        }
}

if gravitate = 2 
{
    t++;
    if t = 30 {gravitate = 0;t=0;}
}
