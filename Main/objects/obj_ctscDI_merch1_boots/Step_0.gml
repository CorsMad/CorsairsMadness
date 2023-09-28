/// @description Insert description here
// You can write your code in this editor

switch(state) {
    case 0:
        fnc_Collision(obj_block)

        if !place_meeting(x,y+1,obj_block){
            vspd+=0.2;   
        }
        break;
    case 1:
        x+=hspd;
        y+=vspd;
        vspd+=0.2;
        break;
}








