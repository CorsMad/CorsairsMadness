/// @description Insert description here
// You can write your code in this editor

#region Вертикальная Камера
if instance_exists(obj_Player)
{
	switch(state){
		case 0:		
			y = room_height;
			break;
		case 1:
			y = lerp(y,obj_Player.y,0.1);
			break;
		case 2:
			y = lerp(y,135,0.1);
			break;
	}
}	
	
if (layer_exists("Backgrounds_1"))
{
	layer_y("Backgrounds_1",camera_get_view_y(view_camera[0]));	
}			

#endregion