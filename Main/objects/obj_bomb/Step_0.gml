/// @description Insert description here
// You can write your code in this editor
fnc_Collision(obj_block);
if isOn = 0 && place_meeting(x,y+1,obj_block) && place_meeting(x,y,obj_Player) && obj_Player.key_down && obj_Player.isAttacking = 0 && obj_Player.isUsingitem = 0 && obj_Player.isCarry = 0 && obj_Player.isDead = 0 && obj_Player.isTakingdmg = 0 && obj_Player.isDashing = 0 && obj_Player.isAttackingdown = 0 && obj_Player.isAirattacking = 0 && obj_Player.isThrowingBomb = 0 && obj_Player.isAirThrowingBomb = 0 && obj_Player.isGrounded = 1
{
	obj_Player.isPickup = 1;
    instance_destroy(pointer);
	instance_destroy();
}

if place_meeting(x-1,y,obj_block) || place_meeting(x+1,y,obj_block)
{
	hspd = 0;	
}

if hspd = 0 && !place_meeting(x,y+vspd,obj_block)
{
	vspd +=0.5;	
}

if isOn = 1
{
	sprite_index = spr_bomb_tick;
	timer++;
}
if timer = 115
{
    fnc_snd_play_over(snd_item_bomb_explosion);
	instance_create_depth(x,y+7,depth-1,obj_bomb_explosion);
}
if timer = 120 
{
	instance_destroy(pointer);	
	instance_destroy();	
}

if isOn = 0 && place_meeting(x,y+1,obj_block) && place_meeting(x,y,obj_Player) && instance_exists(pointer)
{
    pointer.on = 1;   
} else if instance_exists(pointer) pointer.on = 0;