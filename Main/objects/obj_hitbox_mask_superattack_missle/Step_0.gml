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


if x < camera_get_view_x(view_camera[0])-32 || x > camera_get_view_x(view_camera[0])+480+32 ||
   y < camera_get_view_y(view_camera[0])-32 || y > camera_get_view_y(view_camera[0])+270+32 {
        instance_destroy();   
   }


