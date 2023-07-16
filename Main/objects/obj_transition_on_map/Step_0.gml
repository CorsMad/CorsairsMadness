/// @description Insert description here
// You can write your code in this editor

switch(on)
{
    case 0:
        if image_alpha > 0 image_alpha -= 0.015;
        break;
    case 1:
        image_index = 1;
        if image_alpha < 1 image_alpha += 0.015;
        
        if image_alpha >=1 
        {
            switch(travel_island)
            {
                case 1:
                    room_goto(DesertVillageArrive);
                    break;
                case 2:
                    room_goto(SnowVillageArrive);
                    break;
                case 3:
                    room_goto(ShadowVillageArrive);
                    break;
                case 4:
                    room_goto(VulcanoVillageArrive);
                    break;      
            }
        }
        break;
}