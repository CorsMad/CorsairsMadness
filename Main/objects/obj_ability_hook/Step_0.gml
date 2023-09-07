/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_Player)
{
	with(obj_Player){
		isDead = 2;   
		fspd = 0;
		hspd = 0;
		carryspd = 0;
		afterhookspd = 0;
		attackspd = 0;
		isAttacking = 0;
		isAirattacking = 0;
		isAirattacking_timer = 0;
		spd = 0;
		key_left = 0;
		key_right = 0;
		isDashing = 0;
		isHooking = 0;
		isRecoil = 0; 
		global.fhook = 1;
		obj_Player.SpecAbilMask = 1;
		obj_Player.HookEnabled = 1;
	}
	
		
    fnc_snd_play_over(snd_ability_gain);
    
    instance_create_depth(x-12,y-12,depth-1,obj_sfx2);
    instance_create_depth(x+12,y-12,depth-1,obj_sfx2);
    instance_create_depth(x-12,y+12,depth-1,obj_sfx2);
    instance_create_depth(x+12,y+12,depth-1,obj_sfx2);
    instance_create_depth(0,0,-9999999999,obj_txt_tip_possessed_hook);
    instance_destroy();     
}














y = y + cos(b)/2;
	b+= 0.05;