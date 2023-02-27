/// @description Insert description here
// You can write your code in this editor

#region Вертикальная Камера

	if instance_exists(obj_Player)
		{
			x = 0;
			y = obj_Player.y-48;
		}
if (layer_exists("Backgrounds_1"))
{
	layer_y("Backgrounds_1",camera_get_view_y(view_camera[0]));	
}			

#endregion