/// @description Insert description here
// You can write your code in this editor

if !instance_exists(inst) instance_destroy();

switch(mask){
    case 0 : 
        mask_index = noone;
        if alpha>0 alpha -=0.2;
        break;
    case 1 : 
        mask_index = spr_molded_crawling_mask;
        if alpha<0.8 alpha +=0.2;
        break;
}


anim_t ++;
switch(anim_t){
    case 0: anim = 0;break;   
    case 3: anim = 1;break;   
    case 6: anim = 2;break;   
    case 9: anim_t = 0;break;   
}

rot-=5;
if rot = 0 rot = 360;

image_xscale = inst.image_xscale;