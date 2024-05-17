/// @description Insert description here
// You can write your code in this editor
fnc_lng_jmerch_coin_exch();

if canControl = 0 {
    t_control++;
    if t_control = 15 canControl = 1;
}

if canControl = 1{

    player_input();

    if key_left_press {fnc_snd_play_over(snd_menu_select);select -= 1;}
    if key_right_press {fnc_snd_play_over(snd_menu_select);select += 1;}
    if select < 0 select = 1;
    if select > 1 select = 0;

    if key_jump || key_attack
    {
        
        switch(select)
        {
            case 0:
                if global.secrets >=7 && global.saved_jungle = 0
                {
                    global.secrets -=7; 
                    global.saved_jungle = 1;
                    fnc_snd_play_over(snd_menu_accept);
                    var cutsc = instance_create_depth(0,0,0,obj_coin_cutscene);
                    cutsc.merch = 0;
    				cutsc.target = obj_jungle_coin_exchanger;
                    instance_destroy();
                } else {
                     fnc_snd_play_over(snd_menu_negative);  
                }
                break;
            case 1:
                instance_destroy();
                obj_npc_junglev_merch.talk = 0;
                obj_Player.isDead = 2.1;
                break;
        }
    }
}