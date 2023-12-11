/// @description Insert description here
// You can write your code in this editor


y+=spd;
switch(state){
    case 0: //начало жвижения вверх
        if spd > -0.2 spd-=0.005; else {
         state = 1;   
        }
        
        break;
    case 1: //остановка вверх
        if spd < 0 spd+=0.005; else {
            state = 2;   
            spd = 0;
        }
        break;
        
    case 2: //остановка вверху
        t++;
        if t = 10 {
            t = 0;
            state = 3;
        }
        break;
    case 3: //начало жвижения вниз
        if spd < 0.2 spd+=0.005; else {
         state = 4;   
        }
        break;
    case 4: //остановка внизу
        if spd > 0 spd-=0.005; else {
            state = 5;   
            spd = 0;
        }
        break;
    case 5: //остановка вверху
        t++;
        if t = 10 {
            t = 0;
            state = 0;
        }
        break;

}
