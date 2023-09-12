/// @description Insert description here
// You can write your code in this editor

#region Человек
if state = 0
{
   //fnc_player_state0(); 
   fnc_player_state01()
}
#endregion

#region Маска
if state = 1
{
    fnc_player_state1();
}
#endregion

#region Появление после тп
if tp_timer!=0
{
    tp_timer++;   
}
if tp_timer = 2
{
    tp_timer = 0;
    instance_create_depth(x,y-24,depth-1,obj_sfx_teleport_cretor);
}
#endregion


/*
#region TEST
#region Предметы

switch(global.choosed_item)
{
    case 2: // ТОПОР
        switch(global.choosed_item_tier)
        {
            case 1: item_tier = obj_item_axe;
                    break;
            case 2: item_tier = obj_item_axe2;
                    break;
            case 3: item_tier = obj_item_axe3;
                    break;         
        }
	break;
    case 3: // БОМБА
        switch(global.choosed_item_tier)
        {
            case 1: item_tier = obj_item_bomb;
                    break;
            case 2: item_tier = obj_item_bomb2;
                    break;
            case 3: item_tier = obj_item_bomb3;
                    break;       
        }
    break;
    case 4: // Eball
        switch(global.choosed_item_tier)
        {
            case 1: item_tier = obj_item_eball;
                    break;
            case 2: item_tier = obj_item_eball2;
                    break;
            case 3: item_tier = obj_item_eball3;
                    break;       
        }
    break;
    case 5: // Parrot
        switch(global.choosed_item_tier)
        {
            case 1: item_tier = obj_item_parrot_proj1;
                    break;
            case 2: item_tier = obj_item_parrot_proj2;
                    break;
            case 3: item_tier = obj_item_parrot_proj3;
                    break;       
        }
    break;
}

#endregion
#endregion