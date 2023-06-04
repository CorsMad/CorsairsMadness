/// @description Insert description here
// You can write your code in this editor
/*
  0 - появление
  1 - перемещение в игрока
  2 - ожидание + выстрел
  3 - ожидание
  4 - перемещение в игрока
*/

switch(state)
{
    case 0:
        #region появление
            t++;
            if t = 50
            {
                t = 0;
                state = 1;
            }
        #endregion        
        break;
    case 1:
        #region перемещение в игрока
        if instance_exists(obj_Player_boat)
        {
            if point_distance(x, y, obj_Player_boat.x, obj_Player_boat.y) > 3
            {
                move_towards_point(obj_Player_boat.x, obj_Player_boat.y, 3);
            } else 
            {
                speed = 0;
                state = 2;
            }
        }
        #endregion
        break;
    case 2:
        #region ожидание
        t++;
        if t = 50
        {
            instance_create_depth(x,y,depth,obj_boat_boss_shadow_underwater_tent_proj);
            state = 3;
            t = 0;
        }
        #endregion
        break;
    case 4:
        #region перемещение в игрока
        if instance_exists(obj_Player_boat)
        {
            if point_distance(x, y, obj_Player_boat.x, obj_Player_boat.y) > 3
            {
                move_towards_point(obj_Player_boat.x, obj_Player_boat.y, 3);
            } else 
            {
                speed = 0;
                state = 5;
            }
        }
        #endregion
        break;
    case 5:
        #region ожидание
        t++;
        if t = 50
        {
            instance_create_depth(x,y,depth,obj_boat_boss_shadow_underwater_tent_proj);
            state = 6;
            t = 0;
        }
        #endregion
        break;
    case 7:
        instance_destroy();
        if instance_exists(obj_boat_boss_shadow_3)
        {
            obj_boat_boss_shadow_3.phase = 2;  
        }
        break;
}