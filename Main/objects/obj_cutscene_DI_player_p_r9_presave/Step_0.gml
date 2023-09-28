/// @description Insert description here
// You can write your code in this editor

/*
states
0 - Прыжок
1 - остановка и начало катсцены
2 - 
*/

fnc_Collision_player(obj_block)


switch(state){
    case 0:
    if !place_meeting(x,y+1,obj_block)
    {
        image_speed = 0;
        sprite_index = spr_player_jump;   
        if vspd < 0 image_index = 0 else image_index = 1;
    }
        vspd+=0.2;
        if place_meeting(x,y+1,obj_block){
            state = 1;
            vspd = 0;
        }
        break;
    case 1:
    sprite_index = spr_player_run;
    image_speed = 1.25;
        fspd =-2;
        if x <= 208 {
            fspd = 0
            state = 2;
        }
        break;
    case 2:
    if !place_meeting(x,y+1,obj_block)
    {
        image_speed = 0;
        sprite_index = spr_player_jump;   
        if vspd < 0 image_index = 0 else image_index = 1;
    }
        vspd+=0.2;
        if place_meeting(x,y+1,obj_block){
            state = 3;
            vspd = 0;
        }
        break;
    case 3:
    sprite_index = spr_player_run;
    image_speed = 1.25;
        fspd = 2;
        break;
    case 4:
        fspd = 0;
        t++;
        switch(t){
            case 1:
                sprite_index = spr_player_transform;
                image_speed = 0;
                image_index = 0;
                break;
            case 5: image_index = 1;break;
            case 10: image_index = 2;break;
            case 15: image_index = 3;break;
            case 20: image_index = 4;break;
            case 25: image_index = 5;break;
            case 30: image_index = 6;break;
            case 35: image_index = 7;break;
            case 40: image_index = 8;break;
            case 45: sprite_index = spr_player_masked_death;break;
            case 50:
            t = 0;
            state = 5;
        }
        break;
    case 5:
        sprite_index = spr_player_masked_run;
        image_speed = 1.25;
        fspd = 2;
        break;
}




#region граф



#endregion

if fspd!=0 image_xscale = sign(fspd);


