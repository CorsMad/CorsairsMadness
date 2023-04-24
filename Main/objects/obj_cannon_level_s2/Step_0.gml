/// @description Insert description here
// You can write your code in this editor

if isOn = 0 
{
    sprite_index = spr_cannon_level_off;
    if place_meeting(x,y,obj_Player) pointer.on = 1 else pointer.on = 0;
    pointer.sprite_index = spr_hud_pointer_dis;
}

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
        instance_create_depth(0,0,-10000,obj_cannon_level_s2_menu);
        talk_cr_t = 0;   
    }
}
#endregion
    
}

#region управление игроком

if pjump = 1
{
      if instance_exists(obj_Player)
      {
            if obj_Player.isGrounded obj_Player.vspd = - 8;
            if obj_Player.x > x obj_Player.fspd = -0.5; else
            if obj_Player.x < x obj_Player.fspd = 0.5; else
            if obj_Player.x = x obj_Player.fspd = 0;
            if obj_Player.vspd >=0 
            {
                obj_Player.sprite_index = spr_player_cannon_shot;
                obj_Player.image_index = 1;
                obj_Player.depth = obj_cannon_level_s2.depth+2;
            }
            if obj_Player.vspd > 0 && obj_Player.y >= y-42
            {
                obj_Player.isDead = 2.11;
                pjump = 2;
            }
      }
}

if pjump = 2
{
    t++;
    if t = 50
    {
        fnc_snd_play_onetime(snd_cannon_fire);
        instance_create_depth(x,y,depth+1,obj_cannon_level_smoke);
        image_speed = 1;
        obj_Player.vspeed = -6;
        obj_Player.image_index = 2;
    }
    if t = 70
    {
        var tr = instance_create_depth(0,0,0,obj_room_transition_black_screen_after_cannon);
        tr.TargetRoom = TargetRoom;
        tr.TargetX = TargetX;
        tr.TargetY = TargetY;
        image_index = 0;
        image_speed = 0;
    }
}

#endregion