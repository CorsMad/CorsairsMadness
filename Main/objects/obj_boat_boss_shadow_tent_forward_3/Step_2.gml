/// @description Insert description here
// You can write your code in this editor
if (state = 0) { // перемещение по игроку
    if instance_exists(obj_Player_boat)
    {
        y=lerp(y,obj_Player_boat.y-16,0.05);  
    }
}