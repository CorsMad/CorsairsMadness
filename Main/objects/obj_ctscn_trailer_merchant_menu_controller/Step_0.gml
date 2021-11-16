/// @description Insert description here
// You can write your code in this editor
player_input();

if image_alpha < 1
{
    image_alpha+=0.05;   
}


#region Анимация

switch(state)
{
    case 0: sprite_index = spr_ctsn_merch_menu_main;break;   
    case 1: sprite_index = spr_ctsn_merch_menu_choosecors;break;
    case 2: sprite_index = spr_ctsn_merch_menu_axe_upgrade;break;
    case 3: sprite_index = spr_ctsn_merch_menu_cannon_upgrade;break;
}

#endregion

if image_alpha = 1
{

#region Управление
if !instance_exists(obj_ctscn_trailer_merchant_menu_confirm)
{
if state = 0 // ГЛАВНОЕ МЕНЮ \\\\\\\\\\\\\\\\\\\
{
    #region delay
    if delay < 5
    {
        delay++;   
    }
    #endregion
    
    if delay = 5
    {
        #region управление
            if key_down_pressed
            {
                fnc_snd_play_over(snd_menu_select);
                a++;   
            }
            if key_up_press
            {
                fnc_snd_play_over(snd_menu_select);
                a--;    
            }
            if (a > 1) a = 0;
            if (a < 0) a = 1;
        #endregion
    
        #region переход
    
        if key_jump_pressed 
        {
            fnc_snd_play_over(snd_menu_accept);
            switch(a)
            {
                case 0: state = 1;break;                     
                case 1: state = 3;break;
            }
            a = 0;
            delay = 0;
        }
        
       
        
        #endregion
    }
    
        #region selector
    
        if instance_exists(obj_ctscn_trailer_merchant_menu_selector)
        {
        
                switch(a)
                {
                    case 0: obj_ctscn_trailer_merchant_menu_selector.y = 75;break;
                    case 1: obj_ctscn_trailer_merchant_menu_selector.y = 91;break;
                }
        
        }
    
        #endregion
        
}

if state = 1 // ПРЕДМЕТЫ КОРСАРА \\\\\\\\\\\\\\\\\\\
{
    #region delay
    if delay < 5
    {
        delay++;   
    }
    #endregion
    
    if delay = 5
    {
    
        #region управление
            if key_down_pressed
            {
                a++;  
                fnc_snd_play_over(snd_menu_select);
            }
            if key_up_press
            {
                a--;   
                fnc_snd_play_over(snd_menu_select);
            }
            if (a > 3) a = 0;
            if (a < 0) a = 3;
        #endregion
    
        #region переход
    
        if key_jump_pressed && a = 0 
        {
            fnc_snd_play_over(snd_menu_accept);
            state = 2;
            a = 0;
            delay = 0;
        }

        #endregion
        
        #region возврат
        
        if key_dashing 
        {
            fnc_snd_play_over(snd_menu_select);
            state = 0;
            a = 0;
            delay = 0;
        }
        
        #endregion
    }
    
    #region selector
    
    if instance_exists(obj_ctscn_trailer_merchant_menu_selector)
    {
        
            switch(a)
            {
                case 0: obj_ctscn_trailer_merchant_menu_selector.y = 75;break;
                case 1: obj_ctscn_trailer_merchant_menu_selector.y = 91;break;
                case 2: obj_ctscn_trailer_merchant_menu_selector.y = 107;break;
                case 3: obj_ctscn_trailer_merchant_menu_selector.y = 123;break;
            }
        
    }
    
    #endregion
}

if state = 2 // АПГРЕЙДЫ ТОПОРА \\\\\\\\\\\\\\\\\\\
{
    #region delay
    if delay < 5
    {
        delay++;   
    }
    #endregion
    
    if delay = 5
    {
        #region управление
            if key_down_pressed
            {
                fnc_snd_play_over(snd_menu_select);
                a++;   
            }
            if key_up_press
            {
                fnc_snd_play_over(snd_menu_select);
                a--;    
            }
            if (a > 3) a = 0;
            if (a < 0) a = 3;
        #endregion
    
        #region переход
    
        
    
        #endregion
        
        #region возврат
        
        if key_dashing 
        {
            fnc_snd_play_over(snd_menu_select);
            state = 1;
            a = 0;
            delay = 0;
        }
        
        #endregion
    }
    
        #region selector
    
        if instance_exists(obj_ctscn_trailer_merchant_menu_selector)
        {
        
                switch(a)
                {
                    case 0: obj_ctscn_trailer_merchant_menu_selector.y = 75;break;
                    case 1: obj_ctscn_trailer_merchant_menu_selector.y = 107;break;
                    case 2: obj_ctscn_trailer_merchant_menu_selector.y = 139;break;
                }
        
        }
    
        #endregion
        
}

if state = 3 // МЕНЮ ЛОДКИ \\\\\\\\\\\\\\\\\\\
{
    #region delay
    if delay < 5
    {
        delay++;   
    }
    #endregion
    
    if delay = 5
    {
        #region управление
            if key_down_pressed
            {
                fnc_snd_play_over(snd_menu_select);
                a++;   
            }
            if key_up_press
            {
                fnc_snd_play_over(snd_menu_select);
                a--;    
            }
            if (a > 1) a = 0;
            if (a < 0) a = 1;
        #endregion
    
        #region переход
    

    
        #endregion
        
        #region выбор
        
        if a = 1 && key_jump_pressed
        {
            fnc_snd_play_over(snd_menu_accept);
            instance_create_depth(room_width/2,room_height/2,depth-1,obj_ctscn_trailer_merchant_menu_confirm);
            delay = 0;
        }
       
            
            
        
        #endregion
    }
    
    
        #region selector
    
        if instance_exists(obj_ctscn_trailer_merchant_menu_selector)
        {
        
                switch(a)
                {
                    case 0: obj_ctscn_trailer_merchant_menu_selector.y = 75;break;
                    case 1: obj_ctscn_trailer_merchant_menu_selector.y = 107;break;
                }
        
        }
    
        #endregion
        
        #region возврат
        
        if key_dashing 
        {
            fnc_snd_play_over(snd_menu_select);
            state = 0;
            a = 0;
            delay = 0;
        }
        
        #endregion
        
}


}

#endregion

}