/// @description Insert description here
// You can write your code in this editor
x+=hspd;
y+=vspd;

vspd+=0.1;

hspd = lerp(hspd,0,0.02);

t++;
if t = 80
{
    instance_create_depth(x,y,depth-2,obj_sfx_explosion_bomb);	
    instance_destroy();
}
