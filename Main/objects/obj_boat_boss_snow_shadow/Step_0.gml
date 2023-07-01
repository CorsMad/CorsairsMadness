/// @description Insert description here
// You can write your code in this editor

/*

  0 -  появление
  1 -  подплыв к игроку
  2 -  ожидание
  3 -  выпуск акулы вверх
  4 -  ожидание
  5 -  движение за игроком
  6 -  акула вниз
  7 -  движение за игроком
  8 -  ожидание
  9 -  выпуска акулы вверх
  10 - ожидание
  11 - движение за игроком
  12 - акула вниз
  13 - ожидание/удаление 
*/


depth = -1000;

switch(state)
{
    case 0: 
        #region Появление
        t++;
        if t = 50
        {
            t = 0;
            state = 1;
        }
        #endregion        
        break;
    case 1:
        #region подплыв к игроку
        if spd < 3 spd+=0.01;
        if instance_exists(obj_Player_boat)
        {
            if point_distance(x, y, obj_Player_boat.x, obj_Player_boat.y) > spd
            {
                move_towards_point(obj_Player_boat.x, obj_Player_boat.y, spd);
            } else 
            {
                speed = 0;
                spd = 0;
                state = 2;
            }
        }
        #endregion
        break;
    case 2:
        #region ожидание
        t++;
        if t = 50{
            t = 0;
            var su = instance_create_depth(x,y,depth,obj_boat_boss_snow_proj_shark)
            su.state = 0;
            state = 3;
        }
        #endregion
        break;
    case 3:
        #region выпуск акулы вверх
        
        #endregion
        break;
    case 4:
        #region ожидание
        t++;
        if t = 10{
            t = 0;
            state = 5;
            spd = 2;
        }
        #endregion
        break;
    case 5:
        #region подплыв к игроку
        if spd < 3 spd+=0.01;
        if instance_exists(obj_Player_boat)
        {
            if point_distance(x, y, obj_Player_boat.x, obj_Player_boat.y) > spd
            {
                move_towards_point(obj_Player_boat.x, obj_Player_boat.y, spd);
            } else 
            {
                var su = instance_create_depth(x,y-300,depth,obj_boat_boss_snow_proj_shark)
                su.state = 1;
                speed = 0;
                spd = 0;
                state = 6;
            }
        }
        #endregion
        break;
    case 6:
        #region акула вниз
        #endregion
        break;
    case 7:
        #region подплыв к игроку
        if spd < 3 spd+=0.01;
        if instance_exists(obj_Player_boat)
        {
            if point_distance(x, y, obj_Player_boat.x, obj_Player_boat.y) > spd
            {
                move_towards_point(obj_Player_boat.x, obj_Player_boat.y, spd);
            } else 
            {
                speed = 0;
                spd = 0;
                state = 8;
            }
        }
        #endregion
        break;
    case 8:
        #region ожидание
        t++;
        if t = 50{
            t = 0;
            var su = instance_create_depth(x,y,depth,obj_boat_boss_snow_proj_shark)
            su.state = 0;
            state = 9;
        }
        #endregion
        break;
    case 9:
        #region выпуск акулы вверх
        #endregion
        break;
    case 10:
        #region ожидание
        t++;
        if t = 10{
            t = 0;
            spd = 2;
            state = 11;
        }
        #endregion
        break;
    case 11:
        #region подплыв к игроку
        if spd < 3 spd+=0.01;
        if instance_exists(obj_Player_boat)
        {
            if point_distance(x, y, obj_Player_boat.x, obj_Player_boat.y) > spd
            {
                move_towards_point(obj_Player_boat.x, obj_Player_boat.y, spd);
            } else 
            {
                var su = instance_create_depth(x,y-300,depth,obj_boat_boss_snow_proj_shark)
                su.state = 1;
                speed = 0;
                spd = 0;
                state = 12;
            }
        }
        #endregion
        break;
    case 12:
        #region акула вниз
        #endregion
        break;
    case 13:
        #region ожидание
        t++;
        if t = 5{
            if instance_exists(obj_boat_boss_snow_2){
                obj_boat_boss_snow_2.state = 0.75;  
            }
            if instance_exists(obj_boat_boss_snow_3){
                obj_boat_boss_snow_3.state = 0.75;  
            }
            instance_destroy();
        }
        #endregion
        break;
}




