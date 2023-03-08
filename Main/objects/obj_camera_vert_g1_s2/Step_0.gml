/// @description Insert description here
// You can write your code in this editor


if state = 0
{
#region Вертикальная Камера

	if instance_exists(obj_Player)
		{
			x = 0;
			y = obj_Player.y;
		}
#endregion
}

if state = 1
{
    if instance_exists(obj_Player)
		{
			x = 0;
			y = obj_Player.y-48;
		}   
}