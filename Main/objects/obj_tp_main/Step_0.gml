/// @description Insert description here
// You can write your code in this editor


/*
    if (isOn != 11)
    {
        isOn = 1;   
    }
*/

#region Телепорт игрока
if isOn = 1
{
    if instance_exists(obj_Player) && place_meeting(x,y,obj_Player) && obj_Player.isGrounded = 1 && obj_Player.isDashing = 0 && obj_Player.isAttacking = 0 && obj_Player.isAirattacking = 0 && obj_Player.isAttackingdown = 0 && obj_Player.isDead = 0 && obj_Player.superdash_timer = 0
    {
        if obj_Player.key_up
        {
            //isOn = 11;
            mov = 1
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
    if mov = 1
    {
        room_goto(room_tp);
        obj_Player.x = x_tp;
        obj_Player.y = y_tp;
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
    case 1: 
        switch(graph)
        {
            case 1:
                sprite_index = spr_teleport1;
                break;
            case 2:
                sprite_index = spr_teleport2;
                break;
        }
        
        break;
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


#region  num
switch(num)
{   
    case 0:
        isOn = 0;
        break;
    case 1:
        if instance_exists(obj_Player)
        {
            if obj_Player.tp > 0 && obj_Player.tp < 3 isOn = 1;   
        }
        break;
    case 2:
        if instance_exists(obj_Player)
        {
            if obj_Player.tp > 2 && obj_Player.tp < 5 isOn = 1;   
        }
        break;
    case 3:
        if instance_exists(obj_Player)
        {
            if obj_Player.tp > 4 && obj_Player.tp < 7 isOn = 1;   
        }
        break;
    case 4:
        if instance_exists(obj_Player)
        {
            if obj_Player.tp > 6 && obj_Player.tp < 9 isOn = 1;   
        }
        break;
    case 5:
        if instance_exists(obj_Player)
        {
            if obj_Player.tp > 8 && obj_Player.tp < 11 isOn = 1;   
        }
        break;
    case 6:
        if instance_exists(obj_Player)
        {
            if obj_Player.tp > 10 && obj_Player.tp < 13 isOn = 1;   
        }
        break;
    case 7:
        if instance_exists(obj_Player)
        {
            if obj_Player.tp > 12 && obj_Player.tp < 15 isOn = 1;   
        }
        break;
}
#endregion