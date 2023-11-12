/// @description Insert description here
// You can write your code in this editor




#region Talk start

if instance_exists(obj_Player)
{
    if place_meeting(x,y,obj_Player) && talk_cr_t = 0 && obj_Player.isDead !=2 && obj_Player.key_up_press && obj_Player.isGrounded = 1
    && obj_Player.isAttacking = 0 && obj_Player.isDashing = 0 && obj_Player.isAttackingdown = 0 && obj_Player.isAirattacking = 0 
    && obj_Player.isUsingitem = 0 && (global.dia_jungleChief = 0 || global.dia_jungleChief = 2)
    {
        if instance_exists(obj_npc_village_pointer) instance_destroy(obj_npc_village_pointer);
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
        
        if global.dia_jungleChief = 0 instance_create_depth(x,y,-100000,obj_txt_junglev_chief1);
        if global.dia_jungleChief = 2 instance_create_depth(x,y,-100000,obj_txt_junglev_chief2);

    }
}
#endregion


#region Иконка

if place_meeting(x,y,obj_Player) && obj_Player.isDead != 2 && (global.dia_jungleChief = 0 || global.dia_jungleChief = 2)
{
    pointer.on = 1;   
} else pointer.on = 0;

#endregion