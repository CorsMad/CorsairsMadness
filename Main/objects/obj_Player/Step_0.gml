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


/*
#region Cheats

if keyboard_check_pressed(ord("1")) {if global.hp > 0 global.hp = global.hp_max;}
if keyboard_check_pressed(ord("2")) global.mana = global.mana_max;
if keyboard_check_pressed(ord("3")) global.gold += 500;
if keyboard_check_pressed(ord("4")) global.darkessence += 500;
if keyboard_check_pressed(ord("5")) global.secrets += 1;

//if keyboard_check_pressed(ord("Q"))	SpecAbilMask= 1;
//if keyboard_check_pressed(ord("W"))	SpecAbilMask= 2;
//if keyboard_check_pressed(ord("E"))	SpecAbilMask= 3;
//if keyboard_check_pressed(ord("R"))	SpecAbilMask= 4;
//if keyboard_check_pressed(ord("T"))	SpecAbilMask= 5;



#endregion