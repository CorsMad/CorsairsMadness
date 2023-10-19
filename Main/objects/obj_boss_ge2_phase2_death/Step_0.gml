/// @description Insert description here
// You can write your code in this editor
y+=vspd;
vspd+=0.2;

if vspd>0 image_yscale=-1;

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

if y>=room_height+64 
{
    if instance_exists(obj_boss_ge2_controller)
    {
        obj_boss_ge2_controller.state = 4;   
    }
    instance_destroy();   
}

if t mod 10 = 0 instance_create_depth(x,y-16,depth-1,obj_sfx_sparkle_1);