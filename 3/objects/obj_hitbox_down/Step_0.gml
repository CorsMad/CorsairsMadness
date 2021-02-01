/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Player)
{
	if obj_Player.isAttackingdown = 1
	{
		x = obj_Player.x;
		y = obj_Player.y;
		
		if place_meeting(x,y,obj_enemy_parent) || place_meeting(x,y,obj_destructable_parent) || place_meeting(x,y,obj_gift_on_ground)
		{
			obj_Player.isAttackingdown = 0;
			obj_Player.attackingdown_timer = 0;
			obj_Player.vspd = -5;		
		}
		
	} else instance_destroy();
}