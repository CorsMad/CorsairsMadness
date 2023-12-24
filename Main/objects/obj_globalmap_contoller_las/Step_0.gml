/// @description Insert description here
// You can write your code in this editor

kb_gp_input_check();

player_input();


// возможность управления
 if t < 90 t++;
switch(t){
    case 50:
        instance_create_depth(0,0,0,obj_map_deathisland);
        break;
    case 80:
        instance_create_depth(0,0,-1,obj_map_deathisland_beam);
        
}
if t > 85 && !instance_exists(obj_global_map_confirm_end)
{
    

#region Выбор острова
if key_jump || key_attack 
{
    fnc_snd_play_over(snd_menu_accept);
    instance_create_depth(room_width/2,room_height/2,-15000,obj_global_map_confirm_end);fnc_snd_play_over(snd_menu_accept);
}
#endregion

}


#region  аутлайнер
OutlinerAlpha_t +=1 
if OutlinerAlpha_t = 50 OutlinerAlpha_t = 0;
if OutlinerAlpha_t < 25 OutlinerAlpha = 1 else OutlinerAlpha = 0.5;
#endregion
