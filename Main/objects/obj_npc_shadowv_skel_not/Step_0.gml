/// @description Insert description here
// You can write your code in this editor

x+=spd;

/* 
states 
0 - влево
1 - на месте
2 - вправо
*/


    if state = 0
    {
        image_xscale = -1;
        sprite_index = spr_skeleton_walk;
        prest = 0;
        spd = -0.5;
        t++;
        if t = 100
        {
            state = 1;
            t = 0;
            image_index = 0;
        }
    }

    if state = 1
    {
        sprite_index = spr_npc_vulcano_mazeskeleton2;
        spd = 0;
        t++;
        if t = 100
        {
            t = 0;
            if prest = 0 {state = 2;image_index = 0;} else {state = 0;image_index = 0;}
        }
    }

    if state = 2
    {
        image_xscale = 1;
        sprite_index = spr_skeleton_walk;
        prest = 2;
        spd = 0.5;
        t++;
        if t = 100
        {
            state = 1;
            t = 0;
        }
    }

