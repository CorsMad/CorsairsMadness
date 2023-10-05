/// @description Insert description here
// You can write your code in this editor
switch(state){
    case 0:
    if instance_exists(obj_Player){
        direction =  point_direction(x,y,obj_Player.x,obj_Player.y-16);
    }
    image_angle = direction;
        break;

}