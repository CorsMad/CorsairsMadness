/// @description Insert description here
// You can write your code in this editor

#region Горизонтальная Камера
/*	
	if instance_exists(obj_Player)
	{
		x = obj_Player.x;
		y = 0;
	}
*/	
#endregion

#region Вертикальная Камера

	if instance_exists(obj_Player)
		{
			x = 0;
			y = obj_Player.y-32;
		}
#endregion