/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,depth+1,obj_player_indicator_sparkle_big)
var d = instance_create_depth(x,y,depth+1,obj_player_indicator_sparkle_big)
d.pos = 1;
d.image_yscale = -1;

enemy = noone;
action = 0;
//spd = 3;

t = 0;
t_wait = 0;

switch(obj_player_stats.current_stats.attack_speed){
	case 0: spd = 2;break;
	case 1: spd = 2.75;break;
	case 2: spd = 3.25;break;
	case 3: spd = 4;break;		
}

for (var i = 0; i < 8; i++) {
    instance_create_depth(40,152,-1,obj_button_sfx);
}