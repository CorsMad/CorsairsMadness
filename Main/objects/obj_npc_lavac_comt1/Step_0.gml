/// @description Insert description here
// You can write your code in this editor

#region Anim
switch(t_state)
{
    case 0:
        t_anim++;
        switch(t_anim)
        {
            case 1:     
                image_index = 0;
                image_xscale = choose(-1,1);
                break;
            case 100:   image_index = 1;break;
            case 105:   image_index = 2;break;
            case 150:   
                if image_xscale = 1 {
                    var boom = instance_create_depth(x,y-16,depth,obj_npc_lavac_comt1_boom);
                    boom.hspd = -4;
                } 
                if image_xscale = -1
                {
                    var boom = instance_create_depth(x,y-16,depth,obj_npc_lavac_comt1_boom);
                    boom.hspd = 4;   
                }
                
                image_index = 3;
                t_anim = 0;
                t_state = 1;
                break;                                
        }
        break;
    case 1:  
        t_anim = 0;        
        break;
    case 2:
        t_anim++;
        if t_anim = 10 {t_anim = 0;t_state = 0;}
        image_index = 4;
        break;
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

        instance_create_depth(x,y,-100000,obj_txt_lavac_comt1); //3 разговор  //3 разговор    
            

               
    }
}

#endregion

#region Иконка

if place_meeting(x,y,obj_Player) && obj_Player.isDead != 2
{
    pointer.on = 1;   
} else pointer.on = 0;

#endregion