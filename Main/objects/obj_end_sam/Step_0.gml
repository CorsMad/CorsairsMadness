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
		hspd = -2;
		sprite_index = spr_player_run;
		image_speed = 1;
		if x <= 224 {
			x = 224;
			hspd = 0;
			state = 6;
            t=0;
			sprite_index = spr_player_idle;
			image_speed = 1;
		}
        #endregion
        break;
    case 6:
        #region последний разговор
        t++
        if t = 50 {
            state = 7;
            t = 0;
            obj_ending.step = 11;
        }
        #endregion
        break;
}

