/// @description Insert description here
// You can write your code in this editor
/*
0 - закрыто
1 - появление
2 - присутствие
3 - уход
*/

switch(state)
{
    case 0:  
        t = 0;
        break;
    case 1:
        if x < 32 x+=1;
        t++ 
        if t mod 5 = 0 
        {
            instance_create_depth(x+random_range(12,20),y+random_range(-4,4),-1,obj_sfx_dust_expl_small);   
        }
        if x >=32
        {
            x = 32;
            state = 2;
            t = 0;
        }
        break;
    case 2:
        if pressed = 0 && place_meeting(x,y,obj_hitbox_mask)        
        {
            instance_create_depth(x+16,y,depth-1,obj_sfx_weapon_slash);
            pressed = 1;
            state = 2.5;
        }
        break;
    case 3:
        pressed = 0;
        if x > 0 x-=1;
        if x <= 0 
        {
            x = 0;
            state = 0;
        }
        break;
}


#region анимация

image_index = pressed;

#endregion