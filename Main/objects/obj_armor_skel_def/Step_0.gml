/// @description Insert description here
// You can write your code in this editor



y+=vspd;

switch(state){
    case 0:
        t++;
        if instance_exists(obj_Player) {
            if image_index >=2 {
                if obj_Player.x < x image_xscale = 1 else image_xscale = -1;   
            }
        }
        switch(t){
            case 10: image_index = 1;break;
            case 15: image_index = 2;break;
            case 20: image_index = 3;break;
            case 25: image_index = 4;break;
            case 30: image_index = 5;break;
            case 100: image_index = 6;break;
            case 120: image_index = 7;break;
            case 180: image_index = 5;break;
            case 220: image_index = 8;break;
            case 240: 
                instance_create_depth(x,y-8,depth-1,obj_money1);
                state = 1;
                vspd = -4;
                break;
                
        }
        break;
    case 1:
        if vspd > -5 vspd+=0.2;
        image_index = 9;
        break;
}
















