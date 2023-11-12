/// @description Insert description here
// You can write your code in this editor
// Update Emitter
t++;
if t = 2
{
    switch(pos){
        case 0:
            for (var i = 0; i < 10; i++) {
                var l = instance_create_depth(camera_get_view_x(view_camera[0])+480+8,random_range(0,room_height),-300,obj_weather_sand);
                l.pos = pos ;
            }
            break;
        case 1:
            for (var i = 0; i < 10; i++) {
                var l = instance_create_depth(camera_get_view_x(view_camera[0])-8,random_range(0,room_height),-300,obj_weather_sand);
                l.pos = pos ;
            }
            break;
    }    
	t = 0;
}



