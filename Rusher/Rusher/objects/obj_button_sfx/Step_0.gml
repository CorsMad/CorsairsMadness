x = 40 +  lengthdir_x(38, angle); //40
y = 152 + lengthdir_y(38, angle); //40

if image_alpha < 1 image_alpha+=0.1;

angle+=spd
if angle <=-360 angle = 0
image_angle = angle;

t_anim++;

if t_anim mod 10 = 0 {
	
	instance_create_depth(x,y,depth+choose(-1,0,1),obj_player_indicator_sparkle_part);	
}


if !instance_exists(obj_player_indicator) instance_destroy();