/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_options_main_controller)
{
    
    //Главная страница
    if obj_options_main_controller.page = 0   
    {
        switch(obj_options_main_controller.select)
        {
            case 0: y = 64;break; 
            case 1: y = 80;break;
            case 2: y = 96;break;
            case 3: y = 144;break;
        }
    }
    
    //Страница с графикой
    if obj_options_main_controller.page = 1   
    {
        switch(obj_options_main_controller.select)
        {
            case 0: y = 64;break; 
            case 1: y = 96;break;
            case 2: y = 112;break;
            case 3: y = 128;break;
            case 4: y = 144;break; 
            case 5: y = 160;break;
            case 6: y = 208;break;
        }
    }
    
    // Cтраница с музыкой
    if obj_options_main_controller.page = 2   
    {
        switch(obj_options_main_controller.select)
        {
            case 0: y = 83;break; 
            case 1: y = 131;break;
            case 2: y = 176;break;
        }
    }
    
    //Cтраница с управлением
    if obj_options_main_controller.page = 3   
    {
        if obj_options_main_controller.input_change = 1
        {
            x =  152; 
            switch(obj_options_main_controller.select)
                {
                    case 0: y = 64;break; 
                    case 1: y = 80;break;
                    case 2: y = 96;break;
                    case 3: y = 112;break; 
                    case 4: y = 128;break;
                    case 5: y = 144;break;
                    case 6: y = 160;break;
                    case 7: y = 176;break;
                    case 8: y = 208;break;
                }
        } else 
            {
                x = 24;
                switch(obj_options_main_controller.select)
                {
                    case 0: y = 64;break; 
                    case 1: y = 80;break;
                    case 2: y = 96;break;
                    case 3: y = 128;break;
                }
            } 
    }   
}

if instance_exists(obj_options_main_controller)
{
    if  obj_options_main_controller.confirm_input_change = 1
    {
        image_index = 1;   
    } else image_index = 0;
}