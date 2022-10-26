/// @description Insert description here
// You can write your code in this editor


fnc_Collision_player(obj_block);

if !place_meeting(x,y+vspd,obj_block)
{
    vspd+=0.2;
}

/*
states 
0 - падение
1 - остановка
2 - подход
3 - текстбокс
4 - получение маски
5 - трансформация
*/

#region Падение
if state = 0
{
    sprite_index = spr_player_jump;
    image_index = 0;
    image_speed = 0;
    if place_meeting(x,y+1,obj_block)
    {
        state = 1; 
        image_speed = 1;
    }
}
#endregion

#region Остановка

if state = 1
{
    sprite_index = spr_player_idle;
    t++;
    if t = 150
    {
        t = 0;
        state = 2;
    }
}
#endregion

#region Подход
if state = 2
{
   sprite_index = spr_player_run;
   x+=2;
   t++;
   if t = 100
   {
        t = 0;
        state = 3;
        instance_create_depth(x,y,depth,obj_txt_cutscene_r1_ending);
   }
}
#endregion

#region Текстбокс
if state = 3
{
    sprite_index = spr_player_idle;
}

#endregion

#region получение маски
if state = 4
{

    if place_meeting(x,y,obj_mask_level_mask)
    {
        state = 5;  
        instance_destroy(obj_mask_level_mask);
        image_index = 0;
        sprite_index = spr_player_transform;
        image_speed = 0;
        instance_create_depth(x,y,0,obj_cutscene_t1_end_screenshake);
    }
}
#endregion

#region Трансформация
if state = 5
{
    
    //Падение камней
    t++;
    switch(t)
    {
        case 50:
            image_index = 1;
            break;
        case 52:
            image_index = 2;
            break;
        case 54:
            image_index = 3;
            break;
        case 56:
            image_index = 4;
            break;
        case 58:
            image_index = 5;
            break;
        case 60:
            image_index = 6;
            instance_create_depth(0,0,-100000,obj_cutscene_t1_end_blackscreen);
            break;
        case 62:
            image_index = 7;
            break;
        case 64:
            image_index = 8;
            break;
    }
    if t = 200
    {
        // затемнение
    }
}
#endregion

#region
#endregion
