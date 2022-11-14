/// @description Insert description here
// You can write your code in this editor
if state = 1 
{
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
	if t = 60 
	{
		state = 2;	
	}
}

if state = 2 
{
	t++;
	if t mod 40 == 0 
	{
		instance_create_depth(x,y,depth-1,obj_sfx_boss1_steam);
	}
	
	if t mod 20 == 0
	{
        fnc_snd_play_over(snd_boss_expl);
		instance_create_depth(x+random_range(-28,28),y+random_range(-28,+12),depth-1,obj_sfx2);
	}
	
	if x >= room_width/2 
	{
		x+=1;	
	} else x -=1;
}

if instance_exists(obj_boss1_big_projectile_creator)
{
	instance_destroy(obj_boss1_big_projectile_creator)	;
}
if instance_exists(obj_boss1_small_projectile_creator)
{
	instance_destroy(obj_boss1_small_projectile_creator)	;
}
if t > 50 
{
	if t mod 10 == 0 
	{
		image_blend = make_color_hsv(245,255,255);
	}

	if t mod 20 == 0 
	{
		image_blend = c_white;		
	}
}

if place_meeting(x,y,obj_boss1_limiter_d2)
{
	instance_destroy(obj_boss1_limiter_d2);
	obj_boss1_controller.state = 3;
	instance_destroy();
}

#region взаимодействие с пружинами

if place_meeting(x,y,obj_abil_boots_hitbox)
{
    obj_Player.sbootsbuffer = 1;
    obj_Player.vspd = -5;
    obj_Player.dash_counts = 1;
    instance_create_depth(obj_abil_boots_hitbox.x,obj_abil_boots_hitbox.y+20,obj_abil_boots_hitbox.depth-1,obj_sfx4);
    instance_destroy(obj_abil_boots_hitbox);
}
    
#endregion