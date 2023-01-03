/// @description Insert description here
// You can write your code in this editor

if t < 220 t++;
switch(t)
{
    case 50: 
        fnc_msc_play(msc_jp1_c_jp2_c);
        break;
    case 150:
        image_index = 1;
        break;
    case 160:
        image_index = 2;
        break;
    case 170:
        sprite_index = spr_follower_grounded_to_talk;
        image_index = 1;
        break;
    case 180:
        image_index = 2;
        break;
    case 218:
        instance_create_depth(x,y,-9999999999999999,obj_text_f2_r15_cutscene);
        break;
}