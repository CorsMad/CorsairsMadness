/// @description Insert description here
// You can write your code in this editor

kb_gp_input_check();
var sl = keyboard_check_pressed(vk_left)
var sr = keyboard_check_pressed(vk_right)
var su = keyboard_check_pressed(vk_up)
var sd = keyboard_check_pressed(vk_down)
var saccept = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)
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
if t > 85 && !instance_exists(obj_confirm_death)
{
    


#region Выбор острова
if key_jump || key_attack || saccept
{
    fnc_snd_play_over(snd_menu_accept);
    instance_create_depth(room_width/2,room_height/2,depth-2,obj_confirm_death);
}
#endregion

}


#region  аутлайнер
OutlinerAlpha_t +=1 
if OutlinerAlpha_t = 50 OutlinerAlpha_t = 0;
if OutlinerAlpha_t < 25 OutlinerAlpha = 1 else OutlinerAlpha = 0.5;
#endregion
