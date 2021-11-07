/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_sp_boat_level)
{
    switch(obj_sp_boat_level.state)
    {
        case 3: image_index = 1;break;
        case 6: image_index = 2;break;
        case 9: image_index = 3;break;
        case 12: image_index = 4;break;
        case 16: image_index = 5;break;
        
    }
}