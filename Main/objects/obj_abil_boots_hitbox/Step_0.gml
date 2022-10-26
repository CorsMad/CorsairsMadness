/// @description Insert description here
// You can write your code in this editor
t++;
if t > 60 
{
    instance_destroy();   
}

// создание партиклов
t_p ++;
if t_p mod 2 = 0
{
    instance_create_depth(x,y+8,depth-1,obj_abil_boots_particles);   
}


if instance_exists(obj_Player)
{
    if obj_Player.isGrounded = 1 || obj_Player.isTakingdmg = 1 || obj_Player.isDashing = 1
    {
        instance_destroy();   
    }
}

if place_meeting(x,y,obj_spikes) //|| place_meeting(x,y,obj_enemy_parent)
{
    obj_Player.vspd = -7;
    instance_create_depth(x,y+8,depth-1,obj_sfx4);
    instance_destroy();  
}