/// @description Insert description here
// You can write your code in this editor

switch(state){
    case 0:
        break;
    case 1:
        t++;
        switch(t){
            case 1:image_index=1;break;
            case 2:image_index=2;image_alpha = 0.6;break;
            case 3:image_index=3;break;
            case 4:image_index=4;break;
            case 5:image_index=5;image_alpha = 0.7;break;
            case 6:image_index=6;break;
            case 7:image_index=7;break;
            case 8:image_index=8;image_alpha = 0.8;break;
            case 9:image_index=9;break;
            case 10:image_index=10;break;
            case 11:image_index=11;image_alpha = 0.9;break;
            case 12:image_index=12;break;
            case 13:image_index=13;break;
            case 14:
            image_alpha = 1;
            t=0;
            state=2;
            image_index = 14;
            if instance_exists(obj_Player) depth = obj_Player.depth+1
            break;
        }
        break;
    case 2:
        t++;
        if t >= 3 {
            t = 0;
            if image_index = 14 image_index = 15 else image_index = 14;
        }
        break;
}