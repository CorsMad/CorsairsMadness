/// @description Insert description here
// You can write your code in this editor
if moving = 1
{
    x+=spd;  
    y+=vspd;
}

if teleport_delay_timer < 11 {teleport_delay_timer++;}

if pressed = 1
{
    if !place_meeting(x,y,obj_block) && (obj_Player.damage_cd > 30 || obj_Player.damage_cd = 0)
    {     
        obj_Player.isAirattacking = 0;
        obj_Player.isAttacking = 0;
        obj_Player.isDashing = 0;
        obj_Player.isAttacking = 0;
	    obj_Player.isAirattacking = 0;
	    obj_Player.isAirattacking_timer = 0;
	    obj_Player.isGrounded = 0;
	    obj_Player.isSkidding = 0;
	    obj_Player.isSkidding_timer = 0;
	    obj_Player.isDashing = 0;
	    obj_Player.isWallclimbing = 0;
	    obj_Player.isOutjump = 0;
	    obj_Player.isClimbing = 0;
	    obj_Player.isUsingitem = 0;
        obj_Player.isTakingdmg = 0;
	    obj_Player.isAirUsingitem = 0;
	    obj_Player.isHooking = 0;
	    obj_Player.isGravitate = 0;
	    obj_Player.jump_timer = 0;
	    obj_Player.attackingdown_timer = 0;
	    obj_Player.wallclimb_timer = 0;
	    obj_Player.climbing_timer = 0;
	    obj_Player.coyote_timer = 0;
        obj_Player.isDead = 11;
        obj_Player.sprite_index = spr_player_masked_transform_to_cloud; 
        fnc_snd_play_over(snd_tp_cloud_human_transf)
        moving = 0;
    }
}

if moving = 0
{
    if place_meeting(x,y,obj_block)
    {
        if instance_exists(obj_Player)
        {
            if x > obj_Player.x  do x-=1 until !place_meeting(x,y,obj_block)  
            if x <= obj_Player.x  do x+=1 until !place_meeting(x,y,obj_block)  
        }  
    }
}


if image_index = 12
{
    image_index = 4;   
}
blob_cr_timer++;
if blob_cr_timer mod 10 = 0 {instance_create_depth(x,y,depth+1,obj_teleport_cloud_blob);}
if blob_cr_timer = 11 {blob_cr_timer=0;}

if instance_exists(obj_Player) && obj_Player.isDead != 12 && obj_Player.isDead != 11
{
    if x < camera_get_view_x(view_camera[0]) || x > camera_get_view_x(view_camera[0])+480 ||
    y < camera_get_view_y(view_camera[0])-32 || y > camera_get_view_y(view_camera[0]) + 270+32
    {
        isDead = 1;   
    }
}

if isDead = 1
{
    instance_destroy();
    instance_create_depth(x,y,depth,obj_teleport_cloud_destroy);
}

if !place_meeting(x,y,obj_block)
{
    image_blend = c_white;
} else image_blend = c_grey;

if (place_meeting(x,y,obj_teleport_cloud_block_destr) || place_meeting(x,y,obj_wall_trigger_tp)) && moving = 1
{
    isDead = 1;   
}