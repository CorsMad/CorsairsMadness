/// @description Insert description here
// You can write your code in this editor
if isStop != 0
{
    t++;   
}
player_input();
switch(t)
{
    case 50:text = 1;isStop = 0;break;  
    
    case 100:text = 2;isStop = 0;break;
    /*
    case 150:text = 3;isStop = 0;break;
    case 200:text = 4;isStop = 0;break;
    case 250:text = 5;isStop = 0;break;
    case 300:text = 6;isStop = 0;break;
    case 350:text = 7;isStop = 0;break;
    case 400:text = 8;isStop = 0;break;  
    case 450:text = 9;isStop = 0;break;
    */
    case 150:isStop = 0;break;
}

if isStop = 0
{
    if t_text < 30
    {
        t_text++;   
    }
    if t_text > 29
    {
        if key_jump_pressed
        {
            isStop = 1; 
            t_text = 0;
        }    
    }
}
    
/*    
if isStop = 0 && text = 4
{
    if t_text < 30
    {
        t_text++;   
    }
    if t_text > 29  
    {
        if keyboard_check_pressed(ord("K"))
        {
            text = 5;
            instance_destroy();
        }    
    }
}
  */  