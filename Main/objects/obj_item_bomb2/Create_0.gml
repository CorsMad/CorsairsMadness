 /// @description Insert description here
// You can write your code in this editor
Orbit = 60; // Orbit distance
radius = 32;
fnc_snd_play_onetime(snd_enemy_boss2_attack);
Speed = sign(obj_Player.image_xscale)*5; // Orbital speed
Center_X = obj_Player.x; // x of orbital center
Center_Y = obj_Player.y-16; // y of orbital center

isDead = 0;
a = 0;
a_max = 250;

if obj_Player.image_xscale = 1 
{
	dir = 1;
	angle = 180; 
	instance_create_depth(x-48,y,-1,obj_sfx1);
} else  {
			dir = -1;
			angle = 0;
			instance_create_depth(x+48,y,-1,obj_sfx1);
		}

image_xscale = 1.25;
image_yscale = 1.25;

t_anim = 0;
t_anim_max = 4;