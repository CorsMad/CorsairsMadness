/// @description Insert description here
// You can write your code in this editor


y+=vspd;
t = (t + increment) mod 360;
shift = amplitude * dsin(t);

//clone the movement from the object's speed and direction
//xx += hspeed;
yy += vspeed;

//apply the shift
//x = xx + lengthdir_x(shift, direction + 90);
y = yy + lengthdir_y(shift, direction + 90);


switch(state){
	case 0:
		x = lerp(x,0,0.01);
		if x >= -0.05 state = 1;
		break;
	case 1:		
		break;
}