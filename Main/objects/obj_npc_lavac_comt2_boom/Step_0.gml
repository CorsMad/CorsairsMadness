/// @description Insert description here
// You can write your code in this editor


switch(state)
{
    case 0:
        x+=hspd;
        y+=vspd;
        hspd = lerp(hspd,0,0.05);
        vspd = lerp(vspd,0,0.05);
        
        if abs(hspd)<0.05 && abs(vspd)<= 0.05
        {
            state = 1;   
        }
        break;
    case 1:
        if spd < 5 spd+=0.1;
        var en = instance_nearest(x,y,obj_npc_lavac_comt2)
        if en!=noone
            {
            if point_distance(x, y, en.x, en.y) > spd
            {
                move_towards_point(en.x, en.y, spd);
            } else  
            {
                obj_npc_lavac_comt2.t_state = 2;
                instance_destroy();   
            }
        } 
        break;
}


