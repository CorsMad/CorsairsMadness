/// @description Insert description here
// You can write your code in this editor
depth = -y;
switch(state)
{
    case 0: 
        #region перемещение по игроку
            t++;
            switch(t)
            {
                case 5: image_index = 1;break;   
                case 10: image_index = 2;break;   
                case 15: image_index = 3;break;   
                case 20: image_index = 4;break;   
                case 25: image_index = 5;break;   
                case 30: image_index = 6;break;   
                case 35: image_index = 7;break;   
                case 45: image_index = 8;break;   
                case 50: image_index = 9;break;   
                case 200:   
                    t = 0;
                    state = 1;
                    break;                   
            }
            
        #endregion        
        break;
    case 1: 
        #region Ожидание
            t++;
            switch(t)
            {
                case 40: image_index = 10;break;
                case 45: image_index = 11;break;
                case 50: 
                    fnc_snd_play_onetime(snd_vase_destruct);
                    image_index = 12;
                    t = 0;
                    state = 2;
                    break;
            }
        #endregion
        break;
    case 2: 
        #region выстрел вперед
        image_index = 15;
            x -= 5;
            if x <= -16
            {
                instance_destroy();
                if instance_exists(obj_boat_boss_shadow_2)
                {
                    obj_boat_boss_shadow_2.phase = 2;  
                }  
            }
        #endregion
        break;
    case 3: 
        #region полет назад
        x += 5
        {
            if x>= 368
            {
                x = 368;
                state = 4;
            }
        }
        #endregion
        break;
    case 4: 
        #region Ожидание
            t++;
            if t = 50
            {
                instance_destroy();
                if instance_exists(obj_boat_boss_shadow_2)
                {
                    obj_boat_boss_shadow_2.phase = 2;  
                }
            }
        #endregion
        break;
}

#region Взамиодействие с игроком

if instance_exists(obj_Player_boat)
{
    if place_meeting(x,y,obj_player_boat_hitbox) && obj_Player_boat.hit_cd = 0
    {
        obj_Player_boat.hit_cd = 1;
		global.hp-=1;
    } 
}

#endregion
