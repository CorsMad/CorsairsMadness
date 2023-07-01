/// @description Insert description here
// You can write your code in this editor

/*
  0 - заныр и выпрыг
  1 - мины
  2 - лазер в игрока
  3 - цунами
  4 - преграда
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
        #region Лазеры в игрока
            t++;
            #region выстрелы
            
            if t = 100 p_vspd = random_range(-0.8,0.8)
            if t > 100 && t < 150 && (t mod 5 = 0)
            {
                var p1 = instance_create_depth(x,y,depth,obj_boat_boss_snow_proj_1_1);
                p1.hspd = -4;
                p1.vspd = p_vspd;
            }
            if t = 200 p_vspd = random_range(-0.8,0.8)
            if t > 200 && t < 250 && (t mod 5 = 0)
            {
                var p1 = instance_create_depth(x,y,depth,obj_boat_boss_snow_proj_1_1);
                p1.hspd = -4;
                p1.vspd = p_vspd;
            }
            if t = 300 p_vspd = random_range(-0.8,0.8)
            if t > 300 && t < 350 && (t mod 5 = 0)
            {
                var p1 = instance_create_depth(x,y,depth,obj_boat_boss_snow_proj_1_1);
                p1.hspd = -4;
                p1.vspd = p_vspd;   
            }
            
            #endregion
            if t = 400 {
                t = 0;
                state = 3;
            }
            
        #endregion
        break;
    case 3:
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
                state = 4;
                break;
        }
        #endregion
        break;
    case 4:
        #region Удар плавников и преграда
            t++;
            if t = 100 
            {
                instance_create_depth(x,112,depth,obj_boat_boss_snow_proj_1_3)   
            }
            if t = 200
            {
                t = 0;
                state = 0;
            }
        #endregion
        break;
    
}