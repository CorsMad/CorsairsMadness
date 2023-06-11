/// @description Insert description here
// You can write your code in this editor
y+=vspd;
vspd+=0.1;
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
if y > 270+96
{
    instance_create_depth(0,0,0,obj_boss_d2_phase2_controller);
    instance_destroy();   
}