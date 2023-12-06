/// @description Insert description here
// You can write your code in this editor

fnc_Collision(obj_block);

/*
0 - подход
1 - ожидание
5 - уход
6 - последний разговор
*/


switch(state){
    case 0:
        #region подход
        hspd = -2;
        if x <= 512 {
            hspd = 0;
            x = 512;
            obj_ending.state = 1;
            sprite_index = spr_player_idle;
            state = 1;            
        }
        #endregion
        break;
    case 1:
        #region ожидание
        #endregion
        break;
    case 5:
        #region уход
        #endregion
        break;
    case 6:
        #region последний разговор
        #endregion
        break;
}

