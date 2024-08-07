if place_meeting(x+hspd,y,obj_wall) {
	firing = 0;
	sliding = 0;
    while !place_meeting(x+sign(hspd),y,obj_wall) {
        x += sign(hspd);
    } 
    hspd = -hspd/2;
}
x += hspd;

if place_meeting(x,y+vspd,obj_wall) {
    while !place_meeting(x,y+sign(vspd),obj_wall) {
        y += sign(vspd)/2;
    }
    vspd = 0;
}
y += vspd;
if vspd>14 vspd = 14
if !place_meeting(x,y+1,obj_wall) && firing = 0 && sliding = 0 vspd+=0.25;
if place_meeting(x,y+1,obj_wall) && side = 0 hspd = 0;
if place_meeting(x,y+1,obj_wall) && side = 1 hspd = lerp(hspd,0,0.01);	


if !place_meeting(x,y,obj_slide_down_l) && !place_meeting(x,y,obj_slide_down_r)  sliding = 0;



if keyboard_check(vk_right){
	if jpower < 4 jpower+=0.2;
}
if keyboard_check(vk_left){
	if jpower < 4 jpower+=0.2;
}

if !place_meeting(x,y+1,obj_wall) && !keyboard_check(vk_left) && !keyboard_check(vk_right) {
	jpower = 0.1;	
}

if keyboard_check_released(vk_right) && place_meeting(x,y+1,obj_wall){
	//vspd = -jpower*2.5;
	//hspd = jpower;
	vspd = -jpower*3;
	//hspd = jpower*1.5;
	hspd = 5;
	facing = 1;
	if jpower > 2 {
		if side = 0 side = 1 else side = 0;
		bigjump = 1
	} else {
		bigjump = 0;
	}
	jpower = 0.1;	
}
if keyboard_check_released(vk_left) && place_meeting(x,y+1,obj_wall){
	//vspd = -jpower*2.5;
	//hspd = -jpower;
	vspd = -jpower*3;
	//hspd = -jpower*1.5;
	hspd = -5;
	facing = -1;
	if jpower > 2 {
		if side = 0 side = 1 else side = 0;
		bigjump = 1
	} else {
		bigjump = 0;
	}
	jpower = 0.1;	
	
}

#region Передвижение






#endregion

#region Направление
//if hspd > 0 facing = 1 if hspd < 0 facing = -1;
if keyboard_check(vk_left) facing = -1;
if keyboard_check(vk_right) facing = 1;

#endregion

#region ДЭШ

#region В ВОЗДУХЕ
	if !place_meeting(x,y+1,obj_wall) && dash_air = 1 && sliding = 0 && firing = 0 && keyboard_check_pressed(vk_space) {
		screenshake(10,1,0.25);
		dash_air = 0;
		vspd = -2;
		hspd = 10*facing;
	}

	if place_meeting(x,y+1,obj_wall) {
		dash_air = 1;	
	}
#endregion

#region НА ЗЕМЛЕ
		/*
	if place_meeting(x,y+1,obj_wall) && dash_ground = 1 && side = 1{
		if keyboard_check_pressed(vk_space) {
			hspd = 5*facing;			
			screenshake(10,1,0.25);
		}
	}

	if !place_meeting(x,y+1,obj_wall) {
		dash_ground = 1;	
	}
		
		*/
#endregion

#endregion

#region ANIMATION

image_xscale = 1.5*facing;

#region idle
if place_meeting(x,y+1,obj_wall) {//&& hspd = 0 && !keyboard_check(vk_anykey){
	switch(side){
		case 0:
			sprite_index = spr_butterman_idle_top;
			image_speed = 2;
			break;
		case 1:
			sprite_index = spr_butterman_idle_down;
			image_speed = 2;
			break;
	}	
		
}
#endregion

#region jump

if !place_meeting(x,y+1,obj_wall) {
	if bigjump = 1 {
		sprite_index = spr_butterman_jump_big;
		image_speed = 3;
	}
}

#endregion
#endregion