/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Player){
	if t < 101 t++;
	switch(t){
		case 10:
			var c = instance_create_depth(obj_Player.x,obj_Player.y-24,obj_Player.depth-1,obj_coin_cutscene1);
			c.target = target;
			break;
		case 20:
			var c = instance_create_depth(obj_Player.x,obj_Player.y-24,obj_Player.depth-1,obj_coin_cutscene1);
			c.target = target;
			break;
		case 30:
			var c = instance_create_depth(obj_Player.x,obj_Player.y-24,obj_Player.depth-1,obj_coin_cutscene1);
			c.target = target;
			break;
		case 40:
			var c = instance_create_depth(obj_Player.x,obj_Player.y-24,obj_Player.depth-1,obj_coin_cutscene1);
			c.target = target;
			break;
		case 50:
			var c = instance_create_depth(obj_Player.x,obj_Player.y-24,obj_Player.depth-1,obj_coin_cutscene1);
			c.target = target;
			break;
		case 60:
			var c = instance_create_depth(obj_Player.x,obj_Player.y-24,obj_Player.depth-1,obj_coin_cutscene1);
			c.target = target;
			break;
		case 70:
			var c = instance_create_depth(obj_Player.x,obj_Player.y-24,obj_Player.depth-1,obj_coin_cutscene1);
			c.target = target;
			break;
	}
}

if t > 70 && !instance_exists(obj_coin_cutscene1){
	obj_Player.isDead = 0;
	instance_destroy();	
}