/// @description Insert description here
// You can write your code in this editor
if state = 0 && place_meeting(x,y,obj_Player)
{
    state = 1;   
}
if state = 1
{
    cd++;
    if cd = cd_max  
    {
        cd = 0;
        state = 0;
    }
}

// Анимация

switch(cd)
{
    case 0: image_index = 0;break;
    case 1: image_index = 1;break;
    case 90:image_index = 0;break;
}