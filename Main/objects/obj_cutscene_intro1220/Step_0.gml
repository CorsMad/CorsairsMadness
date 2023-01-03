/// @description Insert description here
// You can write your code in this editor

player_input();

#region Начало
if page = 0
{
    t++;
    if t = 50 {t = 0;page = 1;}
}
#endregion

#region Страница1
if page = 1
{
    //text = page1;
    text = eng1;
    t++;
    switch(t)
    {
        case 250: t_alpha = 1;break;
        case 795: t_alpha = 0.75;break;
        case 805: t_alpha = 0.5;break;
        case 815: t_alpha = 0.25;break;
        case 825: t_alpha = 0;break;
        case 850: 
            t = 0;
            page = 2;
            break;         
    }
}

#endregion

#region Страница2
if page = 2
{
    text = eng2;
    t++;
    switch(t)
    {
        case 150: t_alpha = 1;break;
        case 495: t_alpha = 0.75;break;
        case 505: t_alpha = 0.5;break;
        case 515: t_alpha = 0.25;break;
        case 525: t_alpha = 0;break;
        case 550: 
            t = 0;
            page = 3;
            break;
    }
}
#endregion

#region Страница3
if page = 3
{
    text = eng3;
    t++;
    switch(t)
    {
        case 150: t_alpha = 1;break;
        case 795: t_alpha = 0.75;break;
        case 805: t_alpha = 0.5;break;
        case 815: t_alpha = 0.25;break;
        case 825: t_alpha = 0;break;
        case 850: 
            t = 0;
            page = 4;
            break;
    }
}
#endregion

#region Страница4
if page = 4
{
    text = eng4;
    t++;
    switch(t)
    {
        case 150: t_alpha = 1;break;        
        case 595: t_alpha = 0.75;break;
        case 605: t_alpha = 0.5;break;
        case 615: t_alpha = 0.25;break;
        case 625: t_alpha = 0;break;
        case 650: 
            t = 0;
            page = 5;
            break;
    }
}
#endregion

#region Страница5
if page = 5
{
    text = eng5;
    t++;
    switch(t)
    {
        case 150:  t_alpha = 1;break;
        case 600:  alpha_5 = 0.25;break;
        case 610:  alpha_5 = 0.50;break;
        case 620:  alpha_5 = 0.75;break;
        case 630:  alpha_5 = 1;break;
        case 1085: t_alpha = 0.75;alpha_5 = 0.75;break;
        case 1095: t_alpha = 0.5;alpha_5 = 0.5;break;
        case 1105: t_alpha = 0.25;alpha_5 = 0.25;break;
        case 1115: t_alpha = 0;alpha_5 = 0;break;
        
        
        case 1135: 
            t = 0;
            page = 6;
            break;
    }
}
#endregion

#region Страница6
if page = 6
{
    text = eng6;
    t++;
    switch(t)
    {
        case 150: t_alpha = 1;break;
        case 595: t_alpha = 0.75;break;
        case 605: t_alpha = 0.5;break;
        case 615: t_alpha = 0.25;break;
        case 625: t_alpha = 0;break;
        case 650: 
            t = 0;
            fnc_msc_stop_play();
            room_goto(Tutor1);
            break;
    }
}
#endregion

#region  Skip

if  skip = 0 && (keyboard_check_pressed(vk_anykey) ||
    gamepad_button_check_pressed(0,gp_face1) || gamepad_button_check_pressed(0,gp_face2) ||
    gamepad_button_check_pressed(0,gp_face3) || gamepad_button_check_pressed(0,gp_face4) ||
    gamepad_button_check_pressed(0,gp_select) || gamepad_button_check_pressed(0,gp_start) ||
    gamepad_button_check_pressed(0,gp_shoulderl) || gamepad_button_check_pressed(0,gp_shoulderr) ||
    gamepad_button_check_pressed(0,gp_shoulderlb) || gamepad_button_check_pressed(0,gp_shoulderrb) )
{
    skip = 1;
}

if skip = 1
{
    skip_t++;
    if skip_t >=10
    {
        skip_t = 0;
        skip = 2;
    }   
}

if skip = 2
{
    skip_t++;
    if skip_t >= 150 
    {
        skip_t = 0;
        skip = 0;
    }
    
    if keyboard_check_pressed(vk_anykey) || keyboard_check_pressed(vk_anykey) ||
    gamepad_button_check_pressed(0,gp_face1) || gamepad_button_check_pressed(0,gp_face2) ||
    gamepad_button_check_pressed(0,gp_face3) || gamepad_button_check_pressed(0,gp_face4) ||
    gamepad_button_check_pressed(0,gp_select) || gamepad_button_check_pressed(0,gp_start) ||
    gamepad_button_check_pressed(0,gp_shoulderl) || gamepad_button_check_pressed(0,gp_shoulderr) ||
    gamepad_button_check_pressed(0,gp_shoulderlb) || gamepad_button_check_pressed(0,gp_shoulderrb) 
    {
        fnc_msc_stop_play();
        room_goto(Tutor1);  
    }
}

#endregion