/// @description Insert description here
// You can write your code in this editor
if state = 0
{
    if armor>0
    {
    	var fireCollision = instance_place(x,y,obj_boss_l2_bomb_small_fire);
    	if fireCollision != noone 
    	{
            fnc_snd_play_onetime(snd_enemy_dies_sparkles);
    		fireCollision.state = 1;	
    		armor-=1;
    	}
    }
    //

    if armor = 1
    {
        t_fire++;
        if t_fire = 2
        {
            t_fire = 0;
            instance_create_depth(x+random_range(-16,16),y+random_range(6,-32),depth-1,obj_sfx_sparkle_1_player);
        }
    }  
    
    if armor<=0 
    {
        state = 1;   
        t = 0;
        
    }
}


if state = 1
{
    t++;
    switch(t)
    {
        case 10: 
            instance_create_depth(x-8,y-3,depth-1,obj_sfx_sparkle_1_player);
            instance_create_depth(x,y-3,depth-1,obj_sfx_sparkle_1_player);
            instance_create_depth(x+8,y-3,depth-1,obj_sfx_sparkle_1_player);
            image_index = 1;break;
        case 20: 
            instance_create_depth(x-8,y-6,depth-1,obj_sfx_sparkle_1_player);
            instance_create_depth(x,y-6,depth-1,obj_sfx_sparkle_1_player);
            instance_create_depth(x+8,y-6,depth-1,obj_sfx_sparkle_1_player);
            image_index = 2;break;
        case 30:
            instance_create_depth(x-8,y-9,depth-1,obj_sfx_sparkle_1_player);
            instance_create_depth(x,y-9,depth-1,obj_sfx_sparkle_1_player);
            instance_create_depth(x+8,y-9,depth-1,obj_sfx_sparkle_1_player);
            image_index = 3;break;
        case 40: 
            instance_create_depth(x-8,y-12,depth-1,obj_sfx_sparkle_1_player);
            instance_create_depth(x,y-12,depth-1,obj_sfx_sparkle_1_player);
            instance_create_depth(x+8,y-12,depth-1,obj_sfx_sparkle_1_player);
            image_index = 4;break;
        case 50: 
            instance_create_depth(x-4,y-15,depth-1,obj_sfx_sparkle_1_player);
            instance_create_depth(x-4,y-15,depth-1,obj_sfx_sparkle_1_player);
            image_index = 5;break;
        case 60: 
            instance_create_depth(x-4,y-18,depth-1,obj_sfx_sparkle_1_player);
            instance_create_depth(x-4,y-18,depth-1,obj_sfx_sparkle_1_player);
            image_index = 6;break;
        case 70: 
            instance_create_depth(x-4,y-21,depth-1,obj_sfx_sparkle_1_player);
            instance_create_depth(x-4,y-21,depth-1,obj_sfx_sparkle_1_player);
            image_index = 7;break;
        case 80: 
            instance_create_depth(x-4,y-24,depth-1,obj_sfx_sparkle_1_player);
            instance_create_depth(x-4,y-24,depth-1,obj_sfx_sparkle_1_player);
            image_index = 8;break;
        case 90: 
            instance_create_depth(x-4,y-27,depth-1,obj_sfx_sparkle_1_player);
            instance_create_depth(x-4,y-27,depth-1,obj_sfx_sparkle_1_player);
            image_index = 9;break;
        case 100: 
            instance_create_depth(x-4,y-30,depth-1,obj_sfx_sparkle_1_player);
            instance_create_depth(x-4,y-30,depth-1,obj_sfx_sparkle_1_player);
            image_index = 10;
        case 110: 
            instance_create_depth(x-4,y-30,depth-1,obj_sfx_sparkle_1_player);
            instance_create_depth(x-4,y-30,depth-1,obj_sfx_sparkle_1_player);
            image_index = 11;
            state = 2;
            break;
        
    }   
}


if state = 2
{
    if hit_cd>0 hit_cd++;
    if hit_cd = 11 hit_cd = 0;
    
     
    if hit_cd = 0 && place_meeting(x,y,obj_hitbox)
    {
        fnc_snd_play_onetime(snd_vase_destruct);
		instance_create_depth(x+random_range(-8,8),y+random_range(-12,-6),depth-1,obj_sfx3);
        t_red = 1;
        hit_cd = 1;
        hp -=1;
    }
        
    if t_red!=0 {image_blend = c_red;t_red++;}
    if t_red = 5 {t_red = 0;image_blend = c_white;}
    
    if hp<=0
    {
    	instance_destroy();
        fnc_snd_play_onetime(snd_explosions_standart);
        instance_create_depth(x,y,depth,obj_boss_l2_right_rock_destroy)
    }
    
}