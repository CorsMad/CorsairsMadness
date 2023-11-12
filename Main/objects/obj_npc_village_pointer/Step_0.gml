/// @description Insert description here
// You can write your code in this editor

if on = 1
{
    
 //Anim
switch(state)
{   
    case 0:
        if image_alpha < 1 image_alpha +=0.05
        if image_alpha >= 1 {
         state = 1;   
         image_alpha = 1;
        }                
        break;
    case 1:
        t++;
        if t > 50 {
           image_alpha -=0.05; 
           if image_alpha <=0 {
                image_alpha = 0;
                t = 0;
                state = 0;
           }
        }
        break;
}
    
    
switch(village)
    {
        case 1: // ДЖУНГЛИ
            switch(position)
            {
                case 1: // внутри вождь
                    if global.dia_jungleChief = 1 on = 0;
                    break;
                case 2: // внутри торговец
                    if global.dia_jungleMerch != 0 on = 0;
                    break;
            }
            break;
        case 2:
			switch(position)
            {
                case 1: // внутри вождь
                    if global.dia_desertChief = 1 on = 0;
                    break;
                case 2: // внутри торговец
                    if global.dia_desertMerch != 0 on = 0;
                    break;
            }
            break;
        case 3:
			switch(position)
            {
                case 1: // внутри вождь
                    if global.dia_snowChief = 1 on = 0;
                    break;
                case 2: // внутри торговец
                    if global.dia_snowMerch != 0 on = 0;
                    break;
            }
            break;
        case 4:
			switch(position)
            {
                case 1: // внутри вождь
                    if global.dia_shadowChief = 1 on = 0;
                    break;
                case 2: // внутри торговец
                    if global.dia_shadowMerch != 0 on = 0;
                    break;
            }
            break;
        case 5:
			switch(position)
            {
                case 1: // внутри вождь
                    if global.dia_lavaChief = 1 on = 0;
                    break;
                case 2: // внутри торговец
                    if global.dia_lavaMerch != 0 on = 0;
                    break;
            }
            break;
    }
}
if on = 0
{
   image_alpha -= 0.1;
   if image_alpha <= 0 instance_destroy();
}

