/// @description Insert description here
// You can write your code in this editor
fnc_lng_jv_cmt_c()

if canControl = 0{
    t_control++;
    if t_control = 30{
        canControl = 1;   
    }
}

if canControl = 1{
    player_input();

    if key_left_press {fnc_snd_play_over(snd_menu_select);select = 0;}
    if key_right_press {fnc_snd_play_over(snd_menu_select);select = 1;}

    if key_jump || key_attack 
    {
        fnc_snd_play_over(snd_menu_accept);
        switch(select)
        {
            case 0:
                fnc_msc_stop_play_slow();
                if instance_exists(obj_npc_junglev_comt) {
                    global.TargetX = 32;
                    global.TargetY = 176;
                    global.TargetRoom = J_itemtutor;            
                    room_goto(J_itemt_FirstLoading);         
                }
                if instance_exists(obj_npc_desertv_comt) {
                    global.TargetX = 64;
                    global.TargetY = 240;
                    global.TargetRoom = D_itemtutor;            
                    room_goto(D_item_FirstLoading);         
                }
                if instance_exists(obj_npc_snowv_comt) {
                    global.TargetX = 112;
                    global.TargetY = 240;
                    global.TargetRoom = S_itemtutor;            
                    room_goto(S_item_FirstLoading);          
                }
                if instance_exists(obj_npc_shadowv_comt) {
                    global.TargetX = 64;
                    global.TargetY = 176;
                    global.TargetRoom = G_itemtutor;            
                    room_goto(G_item_FirstLoading);          
                }
                if instance_exists(obj_npc_lavav_comt) {
                    global.TargetX = 64;
                    global.TargetY = 224;
                    global.TargetRoom = L_itemtutor;            
                    room_goto(L_item_FirstLoading);             
                }
                instance_destroy(); 
                instance_destroy(obj_Player);
                break;
            case 1:
                instance_destroy();
                if instance_exists(obj_npc_junglev_comt) obj_npc_junglev_comt.talk = 0;
                if instance_exists(obj_npc_desertv_comt) obj_npc_desertv_comt.talk = 0;
                if instance_exists(obj_npc_snowv_comt) obj_npc_snowv_comt.talk = 0;
                if instance_exists(obj_npc_shadowv_comt) obj_npc_shadowv_comt.talk = 0;
                if instance_exists(obj_npc_lavav_comt) obj_npc_lavav_comt.talk = 0;
                obj_Player.isDead = 2.1;
                obj_Player.t_dia = -15;
                break;
        }
    }
}