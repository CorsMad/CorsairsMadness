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
                instance_create_depth(352,192,depth,obj_boat_boss_shadow_underwater_tent3);
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
            instance_create_depth(352,192+40,depth-1,obj_boat_boss_shadow_underwater_big_bubble_create);
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
                instance_create_depth(368,y,depth,obj_boat_boss_shadow_tent_forward3);
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
                if t mod 30 = 0 instance_create_depth(368,192,depth-1,obj_boat_boss_shadow_underwater_small_bubble_create);
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

#region Попадание

fnc_boat_take_dmg_pistol(1)

fnc_boat_take_dmg_dual_pistol(0.4,0.6,0.8) 

fnc_boat_take_dmg_cannon(10) 

fnc_boat_take_dmg_parrotcage(1,1.4,1.8,2)

fnc_boat_take_dmg_blunderbuss(0.5)

fnc_boat_take_dmg_fastshot(0.5,1)

if enemy_hp <=0 {
		
}

if enemy_hp <=0
{   
    var d = instance_create_depth(x,y,depth,obj_boat_boss_shadow_3_death);
    d.sprite_index = sprite_index;
    d.image_index = image_index;
    instance_destroy();
}

#endregion   