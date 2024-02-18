/// @description Insert description here
// You can write your code in this editor
switch(state){
	case 0:
		t++;
		if t = 2 {
		for(var v = 0;v<count_start;v+=1)
		{
			var s1 = instance_create_depth(random_range(0,room_width),random_range(0,room_height-32),depth,obj_weather_snowflake_bgr);
			s1.scale = choose(0.5,1);
		}
			t = 0;
			state = 1;
		}
		break;
	case 1:	
		t++;
		if t = count_cont
		{
			var s1 = instance_create_depth(random_range(0,room_width),0,depth,obj_weather_snowflake_bgr);
			s1.scale = choose(0.5,1);

			t = 0;
		}
		break;
}
	
