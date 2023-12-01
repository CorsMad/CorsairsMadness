/// @description Insert description here
// You can write your code in this editor

fnc_Collision(obj_block);
if !place_meeting(x,y+1,obj_block) vspd+=0.2;

/*
0 - хождение
1 - сворачивание + подготовка
2 - полет в сторону игрока + кдарение 
3 - отлет назад и переворот на спину
4 - переворот на спину
5 - переворот назад
6 - ожидание
*/

switch(state){
    case 0:
        #region хождение
        if place_meeting(x+hspd,y,obj_block)
        {
            hspd = -hspd;   
        }
        var dis = point_distance(x,y,obj_Player.x,obj_Player.y);
        if dis < 160 
        {
            state = 1;
            t = 0;
            hspd = 0;           
        }  
        
        #endregion
        break;
    case 1:
        #region сворачивание + подготовка
        t++;
        if t = 100 {
            if instance_exists(obj_Player)   {
                if obj_Player.x < x {
                    hspd = -3;
                    state = 2;
                    t = 0;
                } else {
                    hspd = 3;
                    state = 2;   
                    t = 0;
                }
            } else state = 0;
        }            
        #endregion
        break;
    case 2:
        #region полет в сторону игрока + кдарение 
        if place_meeting(x+hspd,y,obj_block){
            y-=1; 
            vspd = -3;            
            hspd = -sign(hspd)*2;
            state = 3;
        }
        
        #endregion
        break;
    case 3:
        #region отлет назад и переворот на спину
        if place_meeting(x,y+1,obj_block){
            hspd = 0;
            vspd = 0;
            state = 4;
        }
        #endregion
        break;
    case 4:
        #region переворот на спину
        t++;
        if t = 150 {
            t = 0;
            state = 5;
        }
        #endregion
        break;
    case 5:
        #region переворот назад
        t++;
        if t = 50 {
            t = 0;
            state = 6;
        }
        #endregion
        break;
    case 6:
        #region переворот назад
        t++;
        if t = 50 {
            t = 0;
            var dis = point_distance(x,y,obj_Player.x,obj_Player.y);
            if dis < 160 
            {
                state = 1;
                t = 0;
                hspd = choose(-1,1); 
                vspd = 0;
            }   else {
                state = 0;
                hspd = choose(-1,1);
            }
        }
        #endregion
        break;
}