t++;
if t = 5 {
	t = 0;
	if image_alpha = 1{
		if pos = 0 instance_create_depth(x-4,y+6,depth-2,obj_player_indicator_sparkle_small,{
			direction : random_range(90,180)	
		})	
		if pos = 1 instance_create_depth(x-4,y-6,depth-2,obj_player_indicator_sparkle_small,{
			direction : random_range(270,180)	
		})	
	}
}

if image_alpha < 1 image_alpha+=0.1;

if instance_exists(obj_player_indicator){
	x = obj_player_indicator.x;
	if pos = 0 y = obj_player_indicator.y-28;
	if pos = 1 y = obj_player_indicator.y+28;	
} else instance_destroy();





