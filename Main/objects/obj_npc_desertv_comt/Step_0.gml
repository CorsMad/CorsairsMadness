/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_Player)
{
    if obj_Player.x > x image_xscale = -1 else image_xscale = 1; 
} 


#region Anim

t_anim++;
switch(t_anim)
{
    case 1:     sprite_index = spr_ct_desert_idle;
                image_index = 0;
                image_speed = 0.5;
                break;
    case 200:   sprite_index = spr_ct_desert_click;
                image_index = 0;
                image_speed = 0;
                break;
    case 230:   image_index = 1;break;
    case 235:   image_index = 2;break;
    case 240:   image_index = 3;
                var s = instance_create_depth(x,y-32,depth,obj_npc_desertv_comt_spirit);
                s.image_xscale = image_xscale;
                break;
    case 245:   image_index = 4;break;
    case 250:   image_index = 5;break;
    case 255:   t_anim = 0;break;
    
}

#endregion



#region Talk start

if instance_exists(obj_Player)
{
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
}

if talk_cr_t!= 0 
{
    talk_cr_t++;
    if talk_cr_t = 10
    {
        talk_cr_t = 0;
        switch(global.dia_desertComt)
        {
            case 0: instance_create_depth(x,y,-100000,obj_txt_desertv_comt3); //3 разговор
                break;
            case 1: instance_create_depth(x,y,-100000,obj_txt_desertv_comt2); //2 разговор
                break;
            case 2: instance_create_depth(x,y,-100000,obj_txt_desertv_comt1); //1 разговор
                break;
        }
        

    }
}
#endregion


#region Иконка

if place_meeting(x,y,obj_Player) && obj_Player.isDead != 2
{
    pointer.on = 1;   
} else pointer.on = 0;

#endregion