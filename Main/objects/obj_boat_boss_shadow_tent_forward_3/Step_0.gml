/// @description Insert description here
// You can write your code in this editor

switch(state)
{
    case 0: 
        #region перемещение по игроку
            t++;
            if t = 200
            {
                t = 0;
                state = 1;
            }
        #endregion        
        break;
    case 1: 
        #region Ожидание
            t++;
            if t = 50
            {
                t = 0;
                state = 2;
            }
        #endregion
        break;
    case 2: 
        #region выстрел вперед
            x -= 5;
            if x <= 32
            {
                state = 3;   
            }
        #endregion
        break;
    case 3: 
        #region полет назад
        x += 5
        {
            if x>= 368
            {
                x = 368;
                state = 4;
            }
        }
        #endregion
        break;
    case 4: 
        #region Ожидание
            t++;
            if t = 50
            {
                instance_destroy();
                if instance_exists(obj_boat_boss_shadow_3)
                {
                    obj_boat_boss_shadow_3.phase = 4;  
                }
            }
        #endregion
        break;
}
