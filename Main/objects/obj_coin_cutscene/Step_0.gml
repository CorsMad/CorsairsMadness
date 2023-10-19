/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Player){
    t++;
	switch(t){
		case 10:
			var c = instance_create_depth(obj_Player.x,obj_Player.y-24,obj_Player.depth-1,obj_coin_cutscene1);
			c.target = target;
			break;
		case 25:
			var c = instance_create_depth(obj_Player.x,obj_Player.y-24,obj_Player.depth-1,obj_coin_cutscene1);
			c.target = target;
			break;
		case 40:
			var c = instance_create_depth(obj_Player.x,obj_Player.y-24,obj_Player.depth-1,obj_coin_cutscene1);
			c.target = target;
			break;
		case 55:
			var c = instance_create_depth(obj_Player.x,obj_Player.y-24,obj_Player.depth-1,obj_coin_cutscene1);
			c.target = target;
			break;
		case 70:
			var c = instance_create_depth(obj_Player.x,obj_Player.y-24,obj_Player.depth-1,obj_coin_cutscene1);
			c.target = target;
			break;
		case 85:
			var c = instance_create_depth(obj_Player.x,obj_Player.y-24,obj_Player.depth-1,obj_coin_cutscene1);
			c.target = target;
			break;
		case 100:
			var c = instance_create_depth(obj_Player.x,obj_Player.y-24,obj_Player.depth-1,obj_coin_cutscene1);
			c.target = target;
			break;
	}
}

if t > 110 && !instance_exists(obj_coin_cutscene1){
    fnc_snd_play_onetime(snd_coin_ctscn_finish);
	obj_Player.isDead = 0;
	instance_destroy();	
}