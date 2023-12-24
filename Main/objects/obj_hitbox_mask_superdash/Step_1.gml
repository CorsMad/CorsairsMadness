/// @description Insert description here
// You can write your code in this editor




if instance_exists(obj_Player)
{ 
    if obj_Player.state = 1 && obj_Player.isDead = 12
    {
    	x = obj_Player.x+obj_Player.dir*16;
    	y = obj_Player.y; 	
    } else instance_destroy();
}

















