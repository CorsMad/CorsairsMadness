/// @description Insert description here
// You can write your code in this editor

/*
   1 - Подводная атака
   2 - Большой пузырь
*/
depth = -y;
switch(phase)
{
    case 1:
        #region Подводная атака
        if (state = 0) { // призыв подземн тектакли
            t++;
            if t = 50 {
                instance_create_depth(352,192,depth,obj_boat_boss_shadow_underwater_tent);
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
            instance_create_depth(352,192+40,depth,obj_boat_boss_shadow_underwater_big_bubble_create);
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

#region смерть
if enemy_hp <= 0 {
	instance_destroy();
	instance_create_depth(x,y,depth,obj_boat_boss_shadow_1_death);
}
#endregion

#region Попадание

fnc_boat_take_dmg_pistol(1)
fnc_boat_take_dmg_fastshot(0.6,1.8)
fnc_boat_take_dmg_dual_pistol(0.75,1,1.4) 
fnc_boat_take_dmg_blunderbuss(0.6)
fnc_boat_take_dmg_parrotcage(1,1.25,1.25,1.25)
fnc_boat_take_dmg_cannon(4) 

#endregion   