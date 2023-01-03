/// @description Insert description here
// You can write your code in this editor
if isOn = 1 && place_meeting(x,y,obj_hitbox_mask) && obj_Player.isAttackingdown = 0 && obj_Player.isDashing = 0 && obj_Player.isClimbing = 0 && obj_Player.isHooking = 0 && obj_Player.isOutjump = 0 && obj_Player.isTakingdmg = 0
{
	if instance_exists(obj_hitbox_mask)
    {
        instance_create_depth(obj_hitbox_mask.x,obj_hitbox_mask.y-20,obj_hitbox_mask.depth-1,obj_sfx_weapon_slash);
    }
    if instance_exists(obj_popup_creator_usegreenlantern)
    {
        obj_popup_creator_usegreenlantern.isOn = 0;   
    }
	obj_Player.vspd = -6;
	isOn = 0;
    if obj_Player.x > x 
    {   var im = instance_create_depth(x,y,depth-1,obj_lantern_green_sfx);
        im.image_xscale = -1;
        image_angle = -40;   
    } else 
        {
            instance_create_depth(x,y,depth-1,obj_lantern_green_sfx);
            image_angle = 40;
        }
}

if isOn = 0 
{
    if image_angle != 0
    {
        if image_angle > 0   
        {
            image_angle -= 0.5;   
        }
        if image_angle < 0   
        {
            image_angle += 0.5;   
        }
    }
    
    if image_angle = 0 
    {
        isOn = 1;   
    }
}

#region animation

#endregion