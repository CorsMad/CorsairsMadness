a++;
image_alpha = alpha;
switch(a)
{
    case 100: alpha = 0.25;break;
    case 200: alpha = 0.5;break;
    case 300: alpha = 0.75;break;
    case 400: alpha = 1;break;
    case 700: room_goto(F1_endscreen);break;
}