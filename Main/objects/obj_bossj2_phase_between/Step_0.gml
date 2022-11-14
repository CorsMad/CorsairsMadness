/// @description Insert description here
// You can write your code in this editor

x+=hspd;
image_xscale = -sign(hspd);
if sign(hspd) > 0 && x > 576
{
    if instance_exists(obj_boss2_wings) instance_destroy(obj_boss2_wings);
    obj_boss2_controller.state = future_state;
    obj_boss2_controller.t = 0;
    instance_destroy(m);
    instance_destroy();
}
if sign(hspd) < 0 && x < -100
{
    if instance_exists(obj_boss2_wings) instance_destroy(obj_boss2_wings);
    obj_boss2_controller.state = future_state;
    obj_boss2_controller.t = 0;
    instance_destroy(m);
    instance_destroy();
}

    #region Удар вниз
	if place_meeting(x,y,obj_hitbox_down) 
	{
        obj_Player.isAttackingdown = 0;
    	obj_Player.attackingdown_timer = 0;
    	obj_Player.vspd = -5;   
		instance_create_depth(obj_hitbox_down.x,obj_hitbox_down.y+18,depth-1,obj_sfx_weapon_slash);
	}
	#endregion   


