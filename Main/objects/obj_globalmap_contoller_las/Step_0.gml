/// @description Insert description here
// You can write your code in this editor

kb_gp_input_check();
#region text
switch(global.language)
{
        case 0: //English    
            i0 = "-death island-";
            break;
        case 1: //russian
            i0 = "-остров смерти-";
            break;
        case 2: //spanish
            i0 = "-isla de la muerte-";
            break;
        case 3: //chinese
            i0 = "-死亡岛-";
            break;
        case 4: //portug
            i0 = "-ilha da morte-";
            break;
        case 5: //brazil
            i0 = "-ilha da morte-";
            break;
        case 6: //polish
            i0 = "-wyspa śmierci-";
            break;
        case 7: //japanese
            i0 = "-死の島-";
            break;
        case 8: //deutch
            i0 = "-Todesinsel-";
            break;
        case 9: //french
            i0 = "-île de la mort-";
            break;
        case 10: //Italian
            i0 = "-isola della morte-";
            break; 
}

#endregion
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
