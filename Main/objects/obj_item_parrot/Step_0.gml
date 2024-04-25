/// @description Insert description here
// You can write your code in this editor
var en = instance_nearest(x,y,obj_enemy_parent);
var lb = instance_nearest(x,y,obj_last_boss_parent);
if en != noone{	
	if en.x > x image_xscale = 1 
	if en.x < x image_xscale = -1;
} else if lb !=noone{
	if lb.x > x image_xscale = 1 
	if lb.x < x image_xscale = -1;	
} else {
	if instance_exists(obj_Player)
	{	
		if obj_Player.x > x image_xscale = 1 else image_xscale = -1;	
		if global.choosed_item!= 5 instance_destroy();
	}
}