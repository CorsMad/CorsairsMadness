/// @description Insert description here
// You can write your code in this editor
image_xscale = scale;
image_yscale = scale;

y+=vspd;
if vspd < 3 vspd+=0.1;

var im_alpha = image_alpha;
switch(isSolid){
    case 1:
        live_timer++;
        if live_timer > live_timer_max{
            instance_create_depth(x,y,depth,obj_sfx_dust_expl_small,{
                image_alpha : im_alpha 
            });
            instance_destroy();
        }     
        break;
}


if y > camera_get_view_y(view_camera[0])+270+64 instance_destroy();