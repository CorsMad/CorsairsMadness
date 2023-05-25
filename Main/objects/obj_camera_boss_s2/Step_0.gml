/// @description Insert description here
// You can write your code in this editor
/*
  0 - на месте
  1 - переход вниз
  2 - фиксация внизу
  3 - к игроку
*/

if state = 1
{
    y+=8;
    if y > 704
    {
        y = 704;
        state = 2;
    }
}

if state = 3
{
     spd+=0.1;
    if point_distance(x, y, obj_Player.x, obj_Player.y) > spd
    {
        move_towards_point(obj_Player.x, obj_Player.y, spd);
    }
    else {
        speed = 0;
            state = 4;
    }
}

if state = 4
{
    if instance_exists(obj_Player)
		{
			x = obj_Player.x;
			y = obj_Player.y;
		}     
}