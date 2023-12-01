/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_Player){
    x = obj_Player.x;
    y = obj_Player.y;
    
    if obj_Player.isDead = 1 instance_destroy();
} else instance_destroy();









