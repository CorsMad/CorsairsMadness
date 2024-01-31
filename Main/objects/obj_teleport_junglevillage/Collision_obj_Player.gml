/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_Player)
{
    if obj_Player.isDead !=2 && 
	obj_Player.isFlueting = 0 && obj_Player.isUsingabil = 0 && !instance_exists(obj_item_boomerang) &&
	!instance_exists(obj_item_boomerang_dot) &&
	obj_Player.key_up_press && obj_Player.isGrounded = 1 && obj_Player.isAttacking = 0 &&
	obj_Player.isDashing = 0 && obj_Player.isAttackingdown = 0 &&
	obj_Player.isAirattacking = 0 && obj_Player.isUsingitem = 0
    {
        obj_Player.isDead = 2;
        obj_Player.key_right = 0;
        obj_Player.key_left = 0;
		
        obj_Player.key_attack = 0;
        obj_Player.key_dashing = 0; 
        obj_Player.key_up = 0;
        obj_Player.key_up_press = 0;
        var trans = instance_create_depth(x,y,depth-1000,obj_junglevillage_transition);
        trans.TargetRoom = TargetRoom;
        trans.TargetX = TargetX;
        trans.TargetY = TargetY;
		
    }
}


