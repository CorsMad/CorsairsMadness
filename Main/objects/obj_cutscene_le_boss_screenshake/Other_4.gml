/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_Player){
    if obj_Player.y < room_height/2 {
        if instance_exists(obj_lava_rising){
            obj_lava_rising.y = 224;  
        }
   
    }
}







