/// @description Insert description here
// You can write your code in this editor
//state= 0;
if instance_exists(obj_Player)
{
    if obj_Player.y > room_width/2
    {
     state = 0 
     y = 494-135
    } else {state = 1; y=135}
}

conf = 0;
