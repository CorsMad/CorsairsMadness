/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Player)
{
    switch(state)
    {
        case 0:
            y = obj_Player.y-16;
            break;
        case 1:
            y = obj_Player.y-32;
            break;
    }
}



