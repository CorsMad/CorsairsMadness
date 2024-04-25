/// @description Insert description here
// You can write your code in this editor
/*
x += sign(image_xscale)*spd;
*/

x += -spd;
y += vspd;
vspd += 0.2;


t++;
if t mod 10 = 0 {
	if spd> 0 image_angle+=90;	 else image_angle-=90;
}

