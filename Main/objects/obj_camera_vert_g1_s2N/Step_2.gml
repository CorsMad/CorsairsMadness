/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Player)
{
    switch(state)
    {
        case 0:
            y = lerp(y,obj_Player.y-64,0.1);
            break;
        case 1:
            y = lerp(y,obj_Player.y,0.1);
            break;
        case 2:
            y = lerp(y,obj_Player.y+48,0.1);
            break;
    }
}



