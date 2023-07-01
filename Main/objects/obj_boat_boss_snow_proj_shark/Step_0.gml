/// @description Insert description here
// You can write your code in this editor
switch(state)
{
    case 0: // вверх
        y-=5;
        if y <= -32
        {
            if instance_exists(obj_boat_boss_snow_shadow){
                obj_boat_boss_snow_shadow.state+=1;   
            }
            instance_destroy();
        }
        break;
    case 1: // вниз
        y+=5;
        if place_meeting(x,y,obj_boat_boss_snow_shadow){
            obj_boat_boss_snow_shadow.state+=1;
            instance_destroy();
        }
        break;
}