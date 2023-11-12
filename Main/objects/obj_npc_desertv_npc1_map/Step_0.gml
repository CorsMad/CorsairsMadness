/// @description Insert description here
// You can write your code in this editor
player_input();

switch(state){
    case 0:
        if image_alpha < 1 image_alpha+=0.05;
        if image_alpha >=1{
            image_alpha = 1;
            state = 1;
        }        
        break;
    case 1:
        t++;
        if t = 20{
            t = 0;
            state = 2;
        }
        break;
    case 2:
        if key_attack || key_jump {
            state = 3;   
        }
        break;
    case 3:
        image_alpha -= 0.05;
        if image_alpha<=0{
            instance_destroy();
            obj_Player.isDead = 2.1;
            obj_npc_desertv_npc1.talk = 0;
        }
        break;
}











