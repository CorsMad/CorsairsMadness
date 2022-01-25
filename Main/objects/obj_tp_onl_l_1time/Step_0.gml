/// @description Insert description here
// You can write your code in this editor
    if (dc1 >= 1 && isOn != 11)
    {
            isOn = 1;   
    }


#region Телепорт игрока
if isOn = 1
{
    if instance_exists(obj_Player) && place_meeting(x,y,obj_Player) && obj_Player.isGrounded = 1 && obj_Player.isDashing = 0 && obj_Player.isAttacking = 0 && obj_Player.isAirattacking = 0 && obj_Player.isAttackingdown = 0
    {
        if obj_Player.key_up
        {
            isOn = 11;
            tcountdown = 1;
            obj_Player.isDead = 2;
            obj_Player.key_right = 0;
            obj_Player.key_left = 0;
            obj_Player.key_attack = 0;
            obj_Player.key_dashing = 0; 
            obj_Player.key_up = 0;
            obj_Player.key_up_press = 0;
            fnc_teleport_projectile();
            
        }
    }
}


if tcountdown != 0
{
    tcountdown++;   
}


if tcountdown = 45
{
    fnc_snd_play_onetime(snd_teleport_end);   
}

if tcountdown = 55 
{
    tcountdown=0 ;
    if isOn = 11
    {
        room_goto(tpR1);
        obj_Player.x = tpX1;
        obj_Player.y = tpY1;
        obj_Player.isDead = 0;
        obj_Player.tp_timer++;
    }

    
}

#endregion

#region Глубина  и анимации

if instance_exists(obj_Player)
{
    depth = obj_Player.depth+1;
}

switch(isOn)
{
    case 0: sprite_index = spr_teleport0;break;
    case 1: sprite_index = spr_teleport1;break;
    case 11:sprite_index = spr_teleport1;break;
}

#endregion

#region TIP

if (isOn = 1 || isOn = 2) && place_meeting(x,y,obj_Player) && obj_Player.isGrounded = 1 && !instance_exists(obj_tp_pointer)
{
    instance_create_depth(x,y-72,depth-1,obj_tp_pointer);
}

if !place_meeting(x,y,obj_Player)
{
    instance_destroy(obj_tp_pointer);
}

#endregion