/// @description Insert description here
// You can write your code in this editor
if state = 0
{
    if t < 220 t++;
    switch(t)
    {
        case 50: 
            fnc_msc_play(msc_jp1_c_jp2_c);
            break;
        case 218:
            instance_create_depth(x,y,-9999999999999999,obj_text_pd2_r15_cutscene);
            break;
    }
}
if state = 4
{
    image_speed = 0;
    sprite_index = spr_boss_dp_appear;
    t++;
    switch(t)
    {
        case 1: image_index = 7;break;   
        case 5: image_index = 6;break;   
        case 10: image_index = 5;break;   
        case 15: image_index = 4;break;   
        case 20: image_index = 3;break;   
        case 25: image_index = 2;break;   
        case 30: image_index = 1;break;   
        case 35: image_index = 0;break; 
        case 40:
            instance_destroy(obj_boss_dp_mold_create);
            instance_create_depth(400,176,0,obj_boss_dp_phase1);
            obj_Player.isDead = 0;
            instance_destroy();
            
    }
}