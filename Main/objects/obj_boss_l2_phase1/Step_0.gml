/// @description Insert description here
// You can write your code in this editor

/*

0 -  ожидание
1 -  Бросок

*/

if state = 0.5
{
    t++;
    switch(t)
    {
        case 5: image_index = 1;break;   
        case 8: image_index = 2;break;   
        case 12: image_index = 3;break;   
        case 15: image_index = 4;break;   
        case 80: image_index = 5;break;   
        case 110: image_index = 4;break;   
        case 140: image_index = 5;break;   
        case 170: image_index = 4;break;   
        case 200: image_index = 3;break;   
        case 203: image_index = 2;break;   
        case 206: image_index = 1;break;   
        case 209: image_index = 0;t = 0;state = 0;break;   
    }
}

if (state = 0) { 
    t++;
	if t = 50
	{
		t = 0;
		state = choose(1,1.5);
        sprite_index = spr_boss_l2_skeleton_throw1;
        image_index = 0;
	}
}

if (state = 1) { // влево
    t++;
    image_xscale = 1;
    switch(t)
    {
        case 3: image_index = 1;break;   
        case 6: image_index = 2;break;   
        case 9: image_index = 3;break;   
        case 12: image_index = 4;break;   
        case 15: image_index = 5;break;   
        case 18: image_index = 6;break;   
        case 21: image_index = 5;break;   
        case 24: image_index = 6;break;   
        case 27: image_index = 5;break;   
        case 30: image_index = 6;break;   
        case 33: image_index = 5;break;   
        case 36: image_index = 6;break;   
        case 39: image_index = 7;break;   
        case 50: 
            var l_b = instance_create_depth(x-30,y-14,depth-1,obj_boss_l2_bomb_small);
            l_b.hspd = random_range(-4,-0.5); 
            l_b.vspd = -1 
            image_index = 8;
            break;   
        case 53: image_index = 9;break;   
        case 56: image_index = 10;break;   
        case 59: image_index = 11;break;   
    }
	if t = 150
	{
		state = 0;
		t = 0;
        sprite_index = spr_boss_l2_skeleton_appear1;
        image_index = 0;        
	}
}

if (state = 1.5) { // вправо
    t++;
    image_xscale = -1;
    switch(t)
    {
        case 3: image_index = 1;break;   
        case 6: image_index = 2;break;   
        case 9: image_index = 3;break;   
        case 12: image_index = 4;break;   
        case 15: image_index = 5;break;   
        case 18: image_index = 6;break;   
        case 21: image_index = 5;break;   
        case 24: image_index = 6;break;   
        case 27: image_index = 5;break;   
        case 30: image_index = 6;break;   
        case 33: image_index = 5;break;   
        case 36: image_index = 6;break;   
        case 39: image_index = 7;break;   
        case 50: 
            var l_b = instance_create_depth(x+30,y-14,depth-1,obj_boss_l2_bomb_small);
            l_b.hspd = random_range(0.5,4); 
            l_b.vspd = -1; 
            image_index = 8;
            break;   
        case 53: image_index = 9;break;   
        case 56: image_index = 10;break;   
        case 59: image_index = 11;break;   
    }
	if t = 150
	{
		state = 0;
		t = 0;
        sprite_index = spr_boss_l2_skeleton_appear1;
        image_index = 0;        
	}
}

if ((left = 1) && (right = 1) && (state < 2)) state = 2

if (state = 2) {
    depth = obj_boss_l2_tower_phase1.depth+1;
    image_xscale = 1;
	y+=3;
    sprite_index = spr_boss_l2_skeleton_falldown1;
	if y >=256
	{  
		y = 256;
		state = 3
        t = 0;
        image_index = 0;
        sprite_index = spr_boss_l2_skeleton_onground1;
        depth = 0;
	}
}


if state = 3
{
	t++;
    switch(t)
    {
        case 3:image_index = 1;break;   
        case 6:image_index = 2;break;   
        case 9:image_index = 3;break;   
        case 12:image_index = 4;break;   
        case 50:image_index = 5;break;   
        case 60:image_index = 6;break;   
        case 70:image_index = 5;break;   
        case 80:image_index = 6;break;   
        case 90:image_index = 7;break;   
        case 93:image_index = 8;break;   
        case 96:image_index = 9;break;   
        case 99:image_index = 10;break;  
        case 101: 
            instance_create_depth(x,y,depth,obj_armor_skel);
            image_index = 0;
            sprite_index = spr_boss_l2_skeleton_appear1;
            state = 4;
            break;
    }
}	

if state = 4
{
	if !instance_exists(obj_armor_skel)
	{
        obj_boss_l2_tower_floor_left.state = 3;
        obj_boss_l2_tower_floor_right.state = 3;
		instance_create_depth(240,96,depth,obj_boss_l2_phase2);
		instance_destroy()
	}
}