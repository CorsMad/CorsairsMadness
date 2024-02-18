if island1JungleAlpha < 1 island1JungleAlpha+=0.05;
fnc_lng_jmap();
#region Указатель
//указатель
 t_p++;
 if t_p = 60 {t_p=0;}
 if t_p > 30 {PointerFrame=1} else PointerFrame=0; 
#endregion



anim+=0.1;
if anim >= 5.9 anim = 0;

player_input();


if !instance_exists(obj_confirm_1) && !instance_exists(obj_confirm_2) && delay <= 0
{
    
    #region Перемещение

    if Opened = 0
    {
        switch(globalMapCounter)
        {
            case 0: if key_up_press         {fnc_snd_play_over(snd_menu_select)globalMapCounter = 2};
                    if key_right_press      {fnc_snd_play_over(snd_menu_select)globalMapCounter = 3};
                    break;             
            case 2: if key_down_pressed     {fnc_snd_play_over(snd_menu_select)globalMapCounter = 0};    
                    if key_right_press      {fnc_snd_play_over(snd_menu_select)globalMapCounter = 3};
                    break;              
            case 3: if key_up_press        {fnc_snd_play_over(snd_menu_select)globalMapCounter = 2};
                    if key_left_press       {fnc_snd_play_over(snd_menu_select)globalMapCounter = 0};
                    break;
        }
    }

    if Opened = 1 && global.completed_PL1 = 0
    {
        switch(globalMapCounter)
        {
            case 0: if key_up_press         {fnc_snd_play_over(snd_menu_select);globalMapCounter = 2};
                    if key_right_press      {fnc_snd_play_over(snd_menu_select);globalMapCounter = 3};
                    if key_down_pressed     {fnc_snd_play_over(snd_menu_select)globalMapCounter = 1};    
                    break;              
            case 1: if key_left_press       {fnc_snd_play_over(snd_menu_select);globalMapCounter = 0};
                    if key_up_press         {fnc_snd_play_over(snd_menu_select);globalMapCounter = 3};
                    if key_right_press      {fnc_snd_play_over(snd_menu_select);globalMapCounter = 4};
                    break;              
            case 2: if key_right_press      {fnc_snd_play_over(snd_menu_select);globalMapCounter = 4};
                    if key_down_pressed     {fnc_snd_play_over(snd_menu_select);globalMapCounter = 0};
                    break;               
            case 3: if key_left_press       {fnc_snd_play_over(snd_menu_select);globalMapCounter = 0};
                    if key_up_press         {fnc_snd_play_over(snd_menu_select);globalMapCounter = 2};
                    if key_down_pressed     {fnc_snd_play_over(snd_menu_select);globalMapCounter = 1};
                    if key_right_press      {fnc_snd_play_over(snd_menu_select);globalMapCounter = 4};
                    break;               
            case 4: if key_left_press       {fnc_snd_play_over(snd_menu_select);globalMapCounter = 2};
                    if key_down_pressed     {fnc_snd_play_over(snd_menu_select);globalMapCounter = 1};
                    break;
        }
    }
    
    if Opened = 1 && global.completed_PL1 = 1 && global.completed_PL2 = 0
    {
        switch(globalMapCounter)
        {
            case 0: if key_up_press         {fnc_snd_play_over(snd_menu_select);globalMapCounter = 2};
                    if key_right_press      {fnc_snd_play_over(snd_menu_select);globalMapCounter = 3};
                    if key_down_pressed     {fnc_snd_play_over(snd_menu_select)globalMapCounter = 1};    
                    break;               
            case 1: if key_left_press       {fnc_snd_play_over(snd_menu_select);globalMapCounter = 0};
                    if key_up_press         {fnc_snd_play_over(snd_menu_select);globalMapCounter = 3};
                    if key_right_press      {fnc_snd_play_over(snd_menu_select);globalMapCounter = 5};
                    break;               
            case 2: if key_right_press      {fnc_snd_play_over(snd_menu_select);globalMapCounter = 5};
                    if key_down_pressed     {fnc_snd_play_over(snd_menu_select);globalMapCounter = 0};
                    break;               
            case 3: if key_left_press       {fnc_snd_play_over(snd_menu_select);globalMapCounter = 0};
                    if key_up_press         {fnc_snd_play_over(snd_menu_select);globalMapCounter = 2};
                    if key_down_pressed     {fnc_snd_play_over(snd_menu_select);globalMapCounter = 1};
                    if key_right_press      {fnc_snd_play_over(snd_menu_select);globalMapCounter = 5};
                    break;               
            case 5: if key_left_press       {fnc_snd_play_over(snd_menu_select);globalMapCounter = 2};
                    if key_down_pressed     {fnc_snd_play_over(snd_menu_select);globalMapCounter = 1};
                    break;
        }
    }
    
     if Opened = 1 && global.completed_PL1 = 1 && global.completed_PL2 = 1
    {
        switch(globalMapCounter)
        {
            case 0: if key_up_press         {fnc_snd_play_over(snd_menu_select);globalMapCounter = 2};
                    if key_right_press      {fnc_snd_play_over(snd_menu_select);globalMapCounter = 3};
                    if key_down_pressed     {fnc_snd_play_over(snd_menu_select)globalMapCounter = 1};    
                    break;               
            case 1: if key_left_press       {fnc_snd_play_over(snd_menu_select);globalMapCounter = 0};
                    if key_up_press         {fnc_snd_play_over(snd_menu_select);globalMapCounter = 3};               
                    break;               
            case 2: if key_right_press      {fnc_snd_play_over(snd_menu_select);globalMapCounter = 3};
                    if key_down_pressed     {fnc_snd_play_over(snd_menu_select);globalMapCounter = 0};
                    break;               
            case 3: if key_left_press       {fnc_snd_play_over(snd_menu_select);globalMapCounter = 0};
                    if key_up_press         {fnc_snd_play_over(snd_menu_select);globalMapCounter = 2};
                    if key_down_pressed     {fnc_snd_play_over(snd_menu_select);globalMapCounter = 1};
                    if key_right_press      {fnc_snd_play_over(snd_menu_select);globalMapCounter = 1};
                    break;
        }
    }
    
    
    #endregion

    #region Подтверждение

    if key_attack || key_jump 
    {
        fnc_snd_play_over(snd_menu_accept);
        switch(globalMapCounter)
        {
            case 0:
				var lv = instance_create_depth(240,135,depth-1,obj_confirm_1);
                lv.dest = 4.01;
                break;
            case 1: // колизей
                var le = instance_create_depth(240,135,depth-1,obj_confirm_1);
                le.dest = 94;
                break;
            case 2: // 1 уровень
                var l1 = instance_create_depth(240,135,depth-1,obj_confirm_1);
                l1.dest = 4;
                break;
            case 3: // 2 уровень
                var l2 = instance_create_depth(240,135,depth-1,obj_confirm_1);
                l2.dest = 4.1;
                break;
            case 4: // храм1
				var l3 = instance_create_depth(240,135,depth-1,obj_confirm_1);
                l3.dest = 4.11;                
                break;
            case 5: //  храм2
                var l4 = instance_create_depth(240,135,depth-1,obj_confirm_1);
                l4.dest = 4.12; 
                break;
        }
    }

    #endregion

}

if delay>0 delay-=0.1;