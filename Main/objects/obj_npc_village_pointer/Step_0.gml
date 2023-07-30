/// @description Insert description here
// You can write your code in this editor

if on = 1
{
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
            break;
        case 3:
            break;
        case 4:
            break;
        case 5:
            break;
    }
}
if on = 0
{
   image_alpha -= 0.1;
   if image_alpha <= 0 instance_destroy();
}

