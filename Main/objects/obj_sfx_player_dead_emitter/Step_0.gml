/// @description Insert description here
// You can write your code in this editor
timer++;
switch(timer) 
{
	case 1:		instance_create_depth(obj_Player.x+random_range(-16,16),obj_Player.y+random_range(-32,-16),-1,obj_sfx2);break;
	case 10:	instance_create_depth(obj_Player.x+random_range(-16,16),obj_Player.y+random_range(-32,-16),-1,obj_sfx2);break;
	case 20:	instance_create_depth(obj_Player.x+random_range(-16,16),obj_Player.y+random_range(-32,-16),-1,obj_sfx2);break;
	case 30:	instance_create_depth(obj_Player.x+random_range(-16,16),obj_Player.y+random_range(-32,-16),-1,obj_sfx2);break;
	case 40:	instance_create_depth(obj_Player.x+random_range(-16,16),obj_Player.y+random_range(-32,-16),-1,obj_sfx2);break;
	case 50:	instance_create_depth(obj_Player.x+random_range(-16,16),obj_Player.y+random_range(-32,-16),-1,obj_sfx2);break;
	case 60:	instance_create_depth(obj_Player.x+random_range(-16,16),obj_Player.y+random_range(-32,-16),-1,obj_sfx2);break;
	case 70:	instance_create_depth(obj_Player.x+random_range(-16,16),obj_Player.y+random_range(-32,-16),-1,obj_sfx2);break;
	case 65:    instance_create_depth(obj_Player.x,obj_Player.y-20,-2,obj_sfx_player_dead_big);break;
	case 75:    var a = instance_create_depth(obj_Player.x,obj_Player.y-24,-1,obj_sfx_player_dead);
				a.hspd = 2;
				var b = instance_create_depth(obj_Player.x,obj_Player.y-24,-1,obj_sfx_player_dead);
				b.hspd = 1.5;
				b.vspd = 1.5;
				var c = instance_create_depth(obj_Player.x,obj_Player.y-24,-1,obj_sfx_player_dead);
				c.vspd = 2;
				var d = instance_create_depth(obj_Player.x,obj_Player.y-24,-1,obj_sfx_player_dead);
				d.hspd = -1.5;
				d.vspd = 1.5;
				var e = instance_create_depth(obj_Player.x,obj_Player.y-24,-1,obj_sfx_player_dead);
				e.hspd = -2;
				var f = instance_create_depth(obj_Player.x,obj_Player.y-24,-1,obj_sfx_player_dead);
				f.hspd = -1.5;
				f.vspd = -1.5;
				var g = instance_create_depth(obj_Player.x,obj_Player.y-24,-1,obj_sfx_player_dead);
				g.vspd = -2;
				var h = instance_create_depth(obj_Player.x,obj_Player.y-24,-1,obj_sfx_player_dead);
				h.hspd = 1.5;
				h.vspd = -1.5;
				instance_destroy();
				break; 
}