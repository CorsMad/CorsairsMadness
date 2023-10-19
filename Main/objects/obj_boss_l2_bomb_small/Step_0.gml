/// @description Insert description here
// You can write your code in this editor
x+=hspd;
y+=vspd;

if vspd < 4 vspd+=0.2;

hspd = lerp(hspd,0,0.02);

if state = 0
{

	if place_meeting(x,y+vspd,obj_block)
	{
	    fnc_snd_play_onetime(snd_explosions_standart);
		instance_create_depth(x,256,depth-2,obj_sfx4)	
		instance_create_depth(x,256,depth-1,obj_sfx3)	
		var l = instance_create_depth(x,256,depth,obj_boss_l2_bomb_small_fire);
		var r = instance_create_depth(x,256,depth,obj_boss_l2_bomb_small_fire);
		l.hspd = -2;
		r.hspd = 2;
		instance_destroy();
	}

	if place_meeting(x,y,obj_hitbox)
	{
        fnc_snd_play_onetime(snd_explosions_standart);
		instance_create_depth(x,y,depth-2,obj_sfx4);	
		instance_create_depth(x,y,depth-1,obj_sfx3);
		instance_create_depth(x,y,depth,obj_boss_l2_bomb_small_destr)  
		instance_create_depth(x,y,depth,obj_sfx_explosion);
		instance_destroy();
	}

	if instance_exists(obj_item_boomerang)
	    {
	        if place_meeting(x,y,obj_item_boomerang)
	        {
                fnc_snd_play_onetime(snd_get_boomerang);
	            instance_create_depth(x,y,depth-1,obj_sfx2);
	            if obj_item_boomerang.x > x hspd = -4 else hspd = 4;  
	            vspd = -1;
	            state = 1;
	        }
	    }   
}

if state = 1
{
	if hspd > 0 image_angle+=5;
	if hspd < 0 image_angle-=5;
	if y > room_height+32 instance_destroy();	
}