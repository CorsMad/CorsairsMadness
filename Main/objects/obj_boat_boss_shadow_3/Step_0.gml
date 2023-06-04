/// @description Insert description here
// You can write your code in this editor

/*
   1 - Подводная атака
   2 - Большой пузырь
*/

switch(phase)
{
    case 1:
        #region Подводная атака
        if (state = 0) { // призыв подземн тектакли
            t++;
            if t = 50 {
                instance_create_depth(x,y,depth,obj_boat_boss_shadow_underwater_tent3);
                t = 0;
                state = 1;
            }
        }
        
        if (state = 1) { //ожидание тентакли
            
        }              
        #endregion
        break;
    case 2:
    #region Большой пузырь
        t++;
        if t = 50
        {
            instance_create_depth(x,y,depth-1,obj_boat_boss_shadow_underwater_big_bubble);
        }
        if t = 100
        {   
            t = 0;
            phase = 3;
            state = 0;
        }
    #endregion
        break;
    case 3: 
        #region Щупальце вперед
        if (state = 0) { // призыв щупальца
            t++;
            if t = 50 {
                instance_create_depth(368,y,depth,obj_boat_boss_shadow_tent_forward_3);
                t = 0;
                state = 1;
            }
        }
        
        if (state = 1) { //ожидание тентакли
            
        }  
        #endregion
        break;
    case 4:
        #region Мелкие пузыри
            t++;
        
            if t > 100 && t < 500
            {
                if t mod 30 = 0 instance_create_depth(x,y,depth-1,obj_boat_boss_shadow_underwater_small_bubble);
            }

            if t = 800
            {   
                t = 0;
                phase = 1;
                state = 0;
            }
        #endregion
        break;
}