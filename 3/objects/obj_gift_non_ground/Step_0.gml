/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_hitbox) || place_meeting(x,y,obj_hitbox_down)
{
	instance_create_depth(x,y-24,1,obj_sfx_weapon_slash);
	instance_create_depth(x,y-24,1,obj_gift_on_ground_left);
	instance_create_depth(x,y-12,1,obj_gift_on_ground_right);
	instance_destroy();
	
	
	
	instance_create_depth(x,y-48,1,container);
	switch(container)
	{
		case obj_mana1_gain_gift: 
								if obj_Player.x < x
								{
									container.hspd = 4;
								} else container.hspd = -4;
								break;
		case obj_hp1_gain_gift: 
								if obj_Player.x < x
								{
									container.hspd = 4;
								} else container.hspd = -4;
								break;						
	}
	
}