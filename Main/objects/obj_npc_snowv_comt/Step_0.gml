/// @description Insert description here
// You can write your code in this editor

#region Talk start

if instance_exists(obj_Player)
{
    if place_meeting(x,y,obj_Player) && global.dia_snowComt != 0 && talk_cr_t = 0 && obj_Player.isDead !=2 && obj_Player.key_up_press && obj_Player.isGrounded = 1 && obj_Player.isAttacking = 0 && obj_Player.isDashing = 0 && obj_Player.isAttackingdown = 0 && obj_Player.isAirattacking = 0 && obj_Player.isUsingitem = 0
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
        switch(global.dia_snowComt)
        {
            case 0.5: 
                var point = instance_nearest(x,y,obj_npc_village_pointer);
                if point!=noone instance_destroy(point);
                
                instance_create_depth(x,y,-100000,obj_txt_snowv_comt3); //3 разговор
                break;
            case 1: instance_create_depth(x,y,-100000,obj_npc_snowv_comt_choose);  ; //2 разговор
                break;
            case 2: instance_create_depth(x,y,-100000,obj_txt_snowv_comt1); //1 разговор
                break;
        }
        

    }
}
#endregion


#region Иконка

if place_meeting(x,y,obj_Player) && obj_Player.isDead != 2 && global.dia_snowComt !=0
{
    pointer.on = 1;   
} else pointer.on = 0;

#endregion