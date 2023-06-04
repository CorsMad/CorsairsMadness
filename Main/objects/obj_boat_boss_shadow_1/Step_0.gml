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
                instance_create_depth(x,y,depth,obj_boat_boss_shadow_underwater_tent);
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
            instance_create_depth(352,192,depth,obj_boat_boss_shadow_underwater_big_bubble_create);
        }
        if t = 100 // ожидание после атаки
        {   
            t = 0;
            phase = 1;
            state = 0;
        }
    #endregion
        break;
}