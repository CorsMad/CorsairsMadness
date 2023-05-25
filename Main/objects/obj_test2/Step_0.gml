/// @description Insert description here
// You can write your code in this editor
/*
x = obj_Player.xprevious+24;
y = obj_Player.yprevious+24;
*/

direction = point_direction(x,y,obj_Player.x,obj_Player.y - 20 /*to make it on the player's head level*/)
if speed != 0 {image_speed = 0;} else {image_speed = 1;} // if it's moving, don't have an idle animation. this is only for my use/sprite, you can get rid of it

if distance_to_object(obj_Player)> 10 { //when the distance is above the number, the object gets closer. when it's below, the speed decreases
	
	//change the way the sprite faces based on the player's direction and distance
	var xScale = sign(obj_Player.x - x); 
	image_xscale = xScale;
	
	//speed up to top speed
	followSpeed = followSpeed + 0.1;
	if followSpeed > 3 { followSpeed = 3;}
	speed = followSpeed
	
} else { 
	//slow down when getting to the end position
	speed = speed - 0.1; 
	if speed < 0 {speed = 0;}
	followSpeed = 0; 
	}