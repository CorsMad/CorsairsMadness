/// @description Insert description here
// You can write your code in this editor
x+=spd;
y+=vspd;
spd = lerp(spd,0,0.05);
vspd = lerp(vspd,0,0.04);
if spd!=0
{
    image_xscale = sign(spd);
}