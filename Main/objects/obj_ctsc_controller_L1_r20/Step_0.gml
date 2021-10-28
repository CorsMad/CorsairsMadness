/// @description Insert description here
// You can write your code in this editor

if state = 0
{
    obj_Player.key_right = 1;
    if obj_Player.x >= 208 && obj_Player.isGrounded = 1
    {
        obj_Player.key_jump_pressed = 1;   
        obj_Player.vspd = -6;
    }
    with(obj_Player)
    {
        if place_meeting(x,y,obj_ctsc_r20_boat)
        {
            obj_Player.isDead = 3;   
            obj_Player.x = 0;
            obj_Player.y = 0;
            obj_Player.key_right = 0;
            obj_Player.key_jump_pressed = 0;   
            obj_Player.vspd = 0;
            obj_ctsc_r20_boat.state = 1;
        }
    }
}