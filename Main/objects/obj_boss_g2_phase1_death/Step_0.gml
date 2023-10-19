/// @description Insert description here
// You can write your code in this editor

t++;

if t mod 10 == 0
{
	instance_create_depth(x+random_range(-28,28),y+random_range(-28,+12),depth-1,obj_sfx_explosion_bomb);
    fnc_snd_play_over(snd_boss_expl);
}

if t mod 5 == 0
{
    
	instance_create_depth(x+random_range(-28,28),y+random_range(-28,+12),depth-1,obj_sfx2);
}


if t = 50 image_alpha=0.5;
if t = 100
{
    if instance_exists(obj_boss_g2_phase1_controller)
    {
        obj_boss_g2_phase1_controller.state = 2;   
    }
    instance_destroy()   ;
}

if t mod 10 = 0 instance_create_depth(x,y-16,depth-1,obj_sfx_sparkle_1);