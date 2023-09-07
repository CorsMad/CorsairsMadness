/// @description Insert description here
// You can write your code in this editor
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
switch(t)
{
	case 30:	image_index = 4;
				var i1 = instance_create_depth(x-16,y-39,depth-1,obj_boss_g1_particle);
				i1.hspd = -0.5;
				i1.vspd = -2;
				var i2 = instance_create_depth(x-28,y+16,depth-1,obj_boss_g1_particle);
				i2.hspd = -1.5;
				i2.vspd = -1;
				var i3 = instance_create_depth(x,y-32,depth-1,obj_boss_g1_particle);
				i3.hspd = 0.1;
				i3.vspd = -1;
				var i4 = instance_create_depth(x+28,y-21,depth-1,obj_boss_g1_particle);
				i4.hspd = 1.5;
				i4.vspd = -1;
				var i5 = instance_create_depth(x+26,y+12,depth-1,obj_boss_g1_particle);
				i5.hspd = 1;
				i5.vspd = -2;
				break;
	case 60:	image_index = 5;
				var i1 = instance_create_depth(x-20,y-34,depth-1,obj_boss_g1_particle);
				i1.hspd = -0.5;
				i1.vspd = -2;
				var i2 = instance_create_depth(x-24,y+16,depth-1,obj_boss_g1_particle);
				i2.hspd = -1.5;
				i2.vspd = -1;
				var i3 = instance_create_depth(x+8,y-32,depth-1,obj_boss_g1_particle);
				i3.hspd = 0.1;
				i3.vspd = -1;
				var i4 = instance_create_depth(x+26,y-18,depth-1,obj_boss_g1_particle);
				i4.hspd = 1.5;
				i4.vspd = -1;
				var i5 = instance_create_depth(x+29,y+13,depth-1,obj_boss_g1_particle);
				i5.hspd = 1;
				i5.vspd = -2;
				break;
	case 90:	image_index = 6;
				var i1 = instance_create_depth(x-16,y-39,depth-1,obj_boss_g1_particle);
				i1.hspd = -0.5;
				i1.vspd = -2;
				var i2 = instance_create_depth(x-28,y+16,depth-1,obj_boss_g1_particle);
				i2.hspd = -1.5;
				i2.vspd = -1;
				var i3 = instance_create_depth(x,y-32,depth-1,obj_boss_g1_particle);
				i3.hspd = 0.1;
				i3.vspd = -1;
				var i4 = instance_create_depth(x+28,y-21,depth-1,obj_boss_g1_particle);
				i4.hspd = 1.5;
				i4.vspd = -1;
				var i5 = instance_create_depth(x+26,y+12,depth-1,obj_boss_g1_particle);
				i5.hspd = 1;
				i5.vspd = -2;
				break;
	case 120:	image_index = 7;
				var i1 = instance_create_depth(x-20,y-34,depth-1,obj_boss_g1_particle);
				i1.hspd = -0.5;
				i1.vspd = -2;
				var i2 = instance_create_depth(x-24,y+16,depth-1,obj_boss_g1_particle);
				i2.hspd = -1.5;
				i2.vspd = -1;
				var i3 = instance_create_depth(x+8,y-32,depth-1,obj_boss_g1_particle);
				i3.hspd = 0.1;
				i3.vspd = -1;
				var i4 = instance_create_depth(x+26,y-18,depth-1,obj_boss_g1_particle);
				i4.hspd = 1.5;
				i4.vspd = -1;
				var i5 = instance_create_depth(x+29,y+13,depth-1,obj_boss_g1_particle);
				i5.hspd = 1;
				i5.vspd = -2;
				break;
	case 160:	image_blend = c_red; break;
	case 210:	var i1 = instance_create_depth(x-2,y-2,depth-1,obj_boss_g1_particle);
				i1.hspd = -0.5;
				i1.vspd = -2;
				var i2 = instance_create_depth(x-4,y+4,depth-1,obj_boss_g1_particle);
				i2.hspd = -1.5;
				i2.vspd = -1;
				var i3 = instance_create_depth(x,y-1,depth-1,obj_boss_g1_particle);
				i3.hspd = 0.1;
				i3.vspd = -1;
				var i4 = instance_create_depth(x+2,y-3,depth-1,obj_boss_g1_particle);
				i4.hspd = 1.5;
				i4.vspd = -1;
				var i5 = instance_create_depth(x+6,y+1,depth-1,obj_boss_g1_particle);
				i5.hspd = 1;
				i5.vspd = -2;
				break;
	case 215:   instance_create_depth(x,y,depth-1,obj_sfx_explosion_bomb);
                fnc_snd_play_over(snd_boss_death);
				break;
	case 220:	
                obj_endurance_graveyard.state = 3.2;
				obj_endurance_graveyard.t =  0;
                
                instance_destroy();
                break;
}


if instance_exists(obj_boss1_big_projectile_creator)
{
	instance_destroy(obj_boss1_big_projectile_creator);
}
if instance_exists(obj_boss1_small_projectile_creator)
{
	instance_destroy(obj_boss1_small_projectile_creator);
}

