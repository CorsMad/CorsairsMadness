/// @description Insert description here
// You can write your code in this editor
t++;

if t mod 10 == 0
{
	instance_create_depth(x+420+random_range(-50,50),y+160+random_range(-40,+40),depth-1,obj_sfx_explosion_bomb);
    fnc_snd_play_over(snd_boss_expl);
}

if t mod 5 == 0
{
    
	instance_create_depth(x+420+random_range(-50,50),y+160+random_range(-40,+40),depth-1,obj_sfx2);
}


switch(t)
{
    case 100:   image_index = 4;break;
    case 110:   image_index = 5;break;
    case 120:   image_index = 6;break;
    case 130:   
        sprite_index = spr_boss1_d1_relocate; 
        image_index = 0;
        break;
    case 140:   
        sprite_index = spr_boss1_d1_relocate; 
        image_index = 1;
        break;
    case 150:   
        sprite_index = spr_boss1_d1_relocate; 
        image_index = 2;
        break;
    case 160:   
        sprite_index = spr_boss1_d1_relocate; 
        image_index = 3;
        break;
    case 170:   
        sprite_index = spr_boss1_d1_relocate; 
        image_index = 4;
        break;
    case 180:
        instance_create_depth(x,y,depth,obj_boss_d1_3);
        instance_destroy();
        break;
}