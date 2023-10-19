/*
  0 - Ожидание
  1 - атаки и бомба
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



if (state = 0) { //ожидание
    t++;
    sprite_index = spr_boss_l2_skeleton_appear2;
    image_index = 0;
	if t = 50
	{
		t = 0;
		state = 1;
        sprite_index = spr_boss_l2_skeleton_throw1;
        image_index = 0;
	}
}

if (state = 1) {
    t++;
    
    switch(t)
    {
        // ВЛЕВО
        
        case 3: image_index = -1;image_xscale = 1;break;   
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
        
        // ВПРАВО
        
        case 63: image_index = 1;image_xscale = -1;break;   
        case 66: image_index = 2;break;   
        case 69: image_index = 3;break;   
        case 72: image_index = 4;break;   
        case 75: image_index = 5;break;   
        case 78: image_index = 6;break;   
        case 81: image_index = 5;break;   
        case 84: image_index = 6;break;   
        case 87: image_index = 5;break;   
        case 90: image_index = 6;break;   
        case 93: image_index = 5;break;   
        case 96: image_index = 6;break;   
        case 99: image_index = 7;break;   
        case 110: 
            var l_b = instance_create_depth(x+30,y-14,depth-1,obj_boss_l2_bomb_small);
            l_b.hspd = random_range(0.5,4); 
            l_b.vspd = -1 
            image_index = 8;
            break;   
        case 113: image_index = 9;break;   
        case 116: image_index = 10;break;   
        case 119: image_index = 11;break; 
        
        // БОЛЬШАЯ БОМБА
        
        case 120: image_xscale = 1;sprite_index = spr_boss_l2_skeleton_bigthrow2; image_index = 1;break;
        case 123: image_index = 2;break;
        case 126: image_index = 3;break;
        case 129: image_index = 4;break;
        case 132: image_index = 5;break;
        case 135: image_index = 6;break;
        case 138: image_index = 7;break;
        case 141: image_index = 8;break;
        case 144: image_index = 7;break;
        case 147: image_index = 8;break;
        case 150: image_index = 7;break;
        case 153: image_index = 8;break;
        case 156: image_index = 7;break;
        case 159: image_index = 8;break;
        case 162: image_index = 7;break;
        case 165: image_index = 8;break;
        case 168: image_index = 7;break;
        case 171: image_index = 8;break;
        case 174: image_index = 7;break;
        case 177: image_index = 8;break;
        case 180: image_index = 7;break;
        case 183: image_index = 9;instance_create_depth(x,y-18,depth-1,obj_boss_l2_bomb_big)break;
        case 210: image_index = 10;break;
        case 213: image_index = 11;break;
        case 215: image_index = 12;break;
        case 280:         
            state = 0;
		    t = 0;
            sprite_index = spr_boss_l2_skeleton_appear1;
            image_index = 0;    
            break;
        
        
    }   
}

#region Получение урона
if ((bomb_hit >= 2) && (state < 2)) {
    if instance_exists(obj_boss_l2_bomb_big) instance_destroy(obj_boss_l2_bomb_big);
    if instance_exists(obj_boss_l2_bomb_small) instance_destroy(obj_boss_l2_bomb_small);
	state = 2;
}

if (state = 2) { // Падение
    depth = obj_boss_l2_tower_phase1.depth+1;
    image_xscale = 1;
    y+=3;
    sprite_index = spr_boss_l2_skeleton_falldown2;
	if y >=256
	{
        fnc_snd_play_onetime(snd_follower_landing);
		y = 256;
		state = 3;
		t = 0;
        image_index = 0;
        sprite_index = spr_boss_l2_skeleton_onground2;
        depth = obj_boss_l2_tower_phase1.depth-1;
	}
}



#endregion

if (state = 3) {
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
            instance_create_depth(x+16,y,depth,obj_armor_skel);
		    instance_create_depth(x-16,y,depth,obj_armor_skel);
		    image_index = 0;
            sprite_index = spr_boss_l2_skeleton_appear1;
		    image_speed = 0;	
		    state = 4;
    }
}

if state = 4
{
	if !instance_exists(obj_armor_skel)
	{
		instance_create_depth(x,y,depth-1,obj_hpmax_some_mana_gain_gift);
		instance_create_depth(240,96,depth,obj_boss_l2_phase3_pre);
		instance_destroy()
	}
}


#region Графен
if bomb_hit = 1{
     t_anim++;
     if t_anim = 20 {
        instance_create_depth(x+random_range(-32,32),y+random_range(-8,8),depth-1,obj_sfx_sparkle_2_player);
        instance_create_depth(x+random_range(-32,32),y+random_range(-8,8),depth-1,obj_sfx_sparkle_2_player);    
        t_anim = 0;
     }
}
#endregion