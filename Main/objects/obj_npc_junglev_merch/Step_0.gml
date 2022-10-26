/// @description Insert description here
// You can write your code in this editor


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
        
        instance_create_depth(x,y,-100000,obj_npc_junglev_merch_choose);
        /*
        if (global.dia_jungleChief = 0 && global.dia_jungleMerch = 0) instance_create_depth(x,y,-100000,obj_txt_junglev_merch1); // Отправить к вождю
        if (global.dia_jungleChief = 1 && global.dia_jungleMerch = 0) instance_create_depth(x,y,-100000,obj_txt_junglev_merch2); // Первый разговор
        if (global.dia_jungleMerch = 1 && global.dia_jungleChief = 1) instance_create_depth(x,y,-100000,obj_npc_junglev_merch_choose); // Последующие разговоры
        */
    }
}
#endregion