/// @description Insert description here
// You can write your code in this editor
if image_alpha<1 image_alpha+=0.5;


if isOn = 1 && place_meeting(x,y,obj_Player) && obj_Player.key_jump_pressed &&
	obj_Player.isAttackingdown = 0 && obj_Player.isDashing = 0 && obj_Player.isClimbing = 0 && 
	obj_Player.isHooking = 0 && obj_Player.isOutjump = 0 && 
	obj_Player.isTakingdmg = 0// && obj_Player.isAirattacking = 0
{
	instance_create_depth(obj_Player.x,obj_Player.y,-1,obj_pad_blue_player_sfx);
	obj_Player.vspd = -5;
	isOn = 0;
    audio_play_sound(snd_player_blue_pad,0,0);
}


if isOn = 0 
{
	a++;
	if a = 88
	{
		instance_create_depth(x,y,-2,obj_pad_blue_proj);	
	}
	if a = 90
	{
		a = 0;
		isOn = 1;
	}
}

#region animation

if isOn = 1
{
	sprite_index = spr_pad_blue_on;
} else sprite_index = spr_pad_blue_off;
	
#endregion