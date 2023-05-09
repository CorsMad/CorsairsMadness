/// @description Insert description here
// You can write your code in this editor

if isOn = 1
{

    if obj_Player.isDead = 0
    {
        if place_meeting(x,y,obj_Player) pointer.on = 1 else pointer.on = 0;
        pointer.sprite_index = spr_hud_pointer_up;
        sprite_index = spr_cannon_level;
    } else  pointer.on = 0;
    
    #region Start
    if place_meeting(x,y,obj_Player) && talk_cr_t = 0 && obj_Player.isDead !=2 && obj_Player.key_up_press && obj_Player.isGrounded = 1 && obj_Player.isAttacking = 0 && obj_Player.isDashing = 0 && obj_Player.isAttackingdown = 0 && obj_Player.isAirattacking = 0 && obj_Player.isUsingitem = 0
    {
        talk = 1;
        obj_Player.isDead = 2;
        obj_Player.key_right = 0;
        obj_Player.key_left = 0;
        obj_Player.key_attack = 0;
        obj_Player.key_dashing = 0; 
        obj_Player.key_up = 0;
        obj_Player.key_up_press = 0;
        obj_Player.key_item = 0;

        talk_cr_t = 1;
    }

if talk_cr_t!= 0 
{
    talk_cr_t++;
    if talk_cr_t = 10
    {
        instance_create_depth(camera_get_view_x(view_camera[0]),0,-10000,obj_maze2_controller_global);
        talk_cr_t = 0;   
    }
}
#endregion
    
}
