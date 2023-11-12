/// @description Insert description here
// You can write your code in this editor
switch(pos){
    case 0:
            x+=hspd;
            if x < camera_get_view_x(view_camera[0])-8 {
                instance_destroy();   
            }
            
        break;
    case 1:
            x-=hspd;
            if x > camera_get_view_x(view_camera[0])+488 {
                instance_destroy();   
            }
        break;
}


 y = y + cos(t);
 t+= wave;

 image_xscale = scale;
 image_yscale = scale;


            
            
            
/*
x+=hspd;
switch(pos){
	case 1:
		y-=vspd;
		break;
	case 2:
		y+=vspd;
		break;
	case 3:
		y = y + sin(a);
		if cos_sign = 0 a+= 0.05 else a-= 0.05
		
		;
		break;
}
/*
if y > room_height+8 instance_destroy();
if y < -8 instance_destroy()