/// @description Insert description here
// You can write your code in this editor

switch(state) {
    case 0:
        fnc_Collision(obj_block)

        if place_meeting(x,y+1,obj_block)   {
            fnc_snd_play_onetime(snd_player_landing) ; 
            hspd = 0;
            vspd = 0;
            state = 0.5;
            
        }
        
        if !place_meeting(x,y+1,obj_block){
            vspd+=0.2;   
        } else hspd = 0;
        break;
    case 0.5:
        
        break;
    case 1:
        x+=hspd;
        y+=vspd;
        vspd+=0.2;
        break;
}








