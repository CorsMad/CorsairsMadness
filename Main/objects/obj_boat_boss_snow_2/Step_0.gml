/// @description Insert description here
// You can write your code in this editor


/*
  0 - Заныр и выпрыг
  1 - Удар плавником и мины
  2 - Удар плавников и тсунами 
*/

switch(state)
{
    case 0:
        #region Заныр и выпрыг
        t++;
        if t = 10
        {
            t = 0;
            instance_create_depth(x,y,depth,obj_boat_boss_snow_shadow);
            state = 0.5;
        }
        #endregion
        break;
    case 0.75:
        t++;
        if t=50
        {
            t = 0;
            state = 1;
        }
        break;
    case 1:
        #region 3 Удара плавником и мины   
            t++;
            switch(t)
            {
                case 50:
                    instance_create_depth(x,y,depth,obj_boat_boss_snow_proj_2_2);
                    break;
                case 150:
                    instance_create_depth(x,y,depth,obj_boat_boss_snow_proj_2_2);
                    break;
                case 250:
                    instance_create_depth(x,y,depth,obj_boat_boss_snow_proj_2_2);
                    break;
                case 350:
                    instance_create_depth(x,y,depth,obj_boat_boss_snow_proj_2_2);
                    break;
                case 450:
                    t = 0;
                    state = 2;
                    break;
            }
        #endregion
        break;       
    case 2:    
        #region Удар плавников и тсунами 
        t++;
        switch(t)
        {
            case 100:
                instance_create_depth(x,y,depth,obj_boat_boss_snow_proj_2_3);
                break;
            case 300:
                instance_create_depth(x,y,depth,obj_boat_boss_snow_proj_2_3);
                break;
            case 400:
                t = 0;
                state = 0;
                break;
        }
        #endregion
        break; 
}