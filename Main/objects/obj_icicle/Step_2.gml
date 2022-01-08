/// @description Insert description here
// You can write your code in this editor
y+=vspd;
switch(state)
{
    case 0: if instance_exists(obj_Player)
            {
                if x - obj_Player.x < 96 
                {
                    state = 1;
                    
                }
            }
            break;
    case 1: if (t < t_max) t++;
            if (t = t_max) vspd += 0.1;
            
            break;   
}



// Анимация



    
