/// @description Insert description here
// You can write your code in this editor


x+=hspd;
y+=vspd;
vspd+=0.05;


t++;
if t = t_max {
    var d = instance_create_depth(x,y,depth-1,obj_sfx_explosion);
    d.image_xscale = 2;
    d.image_yscale = 2;
    fnc_snd_play_onetime(snd_item_bomb_explosion);
    instance_destroy();   
}




