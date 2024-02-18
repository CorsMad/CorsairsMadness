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

if state >=1 {
	yy = lerp(yy,42,0.01);	
}

if state < 2 {
	x = lerp(x,-64,0.01);	
} 
if state >=2  && state < 10{
	x = lerp(x,-6,0.01);	
}
if state = 10 {
	x+=xspd;
	if xspd < 3 xspd +=0.01;
}



switch(state){
	case 0:
		if x >= -64.05 state = 0.5;
		break;
	case 0.5:
		break;
	case 1:		
		if x < 230 {
			state = 2;	
			fnc_msc_play(msc_tutor_shore);
		}
		break;
	case 1.5: break;
	case 2:
		t_talk++;
		if t_talk = 50 {
			instance_create_depth(x,y,2,obj_txt_ending_credits_bgr)	
		}
		if t_talk = 100
		{	
			t_talk = 0;
			state = 2.1;
			instance_create_depth(x,y,1,obj_txt_ending_credits_text1);
		}
		break;
	case 3:
		t_talk ++;
		if t_talk = 50 {
			instance_create_depth(x,y,1,obj_txt_ending_credits_text2);
			t_talk = 0;
			state = 2.1;
		}
		break;
	case 4:
		t_talk ++;
		if t_talk = 50 {
			instance_create_depth(x,y,1,obj_txt_ending_credits_text3);
			t_talk = 0;
			state = 2.1;
		}
		break;
	case 5:
		t_talk ++;
		if t_talk = 50 {
			instance_create_depth(x,y,1,obj_txt_ending_credits_text4);
			t_talk = 0;
			state = 2.1;
		}
		break;
	case 6:
		t_talk ++;
		if t_talk = 50 {
			instance_create_depth(x,y,1,obj_txt_ending_credits_text5);
			t_talk = 0;
			state = 2.1;
		}
		break;
	case 7:
		t_talk ++;
		if t_talk = 50 {
			instance_create_depth(x,y,1,obj_txt_ending_credits_text6);
			t_talk = 0;
			state = 2.1;
		}
		break;
	case 8:
		t_talk ++;
		if t_talk = 50 {
			instance_create_depth(x,y,1,obj_txt_ending_credits_text7);
			t_talk = 0;
			state = 2.1;
		}
		break;
	case 9:
		t_talk++;
		if t_talk = 50 {
			instance_destroy(obj_txt_ending_credits_bgr);
			t_talk = 0;
			state = 10;
		}
		break;
	case 10:
		//x = lerp(x,-6,0.01);
		t_talk++;
		if t_talk = 100 {
			instance_create_depth(0,0,depth-1000,obj_black_screen_to_start);
		}
		break;
}