/// @description Insert description here
// You can write your code in this editor



switch(state){
    case 0:
        if hspeed > 0 image_angle-=20;
        if hspeed < 0 image_angle+=20;
        break;
    case 1:
        instance_destroy();
        instance_create_depth(x,y,depth,obj_hitbox_mask_superattack_missle_death);
        break;
}




