/// @description Insert description here
// You can write your code in this editor
if state = 0
{
    t++;
    t1++;

    if t = 5 
    {
        t =0;
        instance_create_depth(98+random_range(+16,-16),192+random_range(-16,16),depth-1,obj_sfx_sparkle_1_player)   ;
        instance_create_depth(98+random_range(+16,-16),192+random_range(-16,16),depth-1,obj_sfx_sparkle_1_player)   ;
        instance_create_depth(98+random_range(+16,-16),192+random_range(-16,16),depth-1,obj_sfx_sparkle_1_player)   ;
        instance_create_depth(98+random_range(+16,-16),192+random_range(-16,16),depth-1,obj_sfx_sparkle_1_player)   ;       
    }

    if t1 = 50
    {
        instance_create_depth(98+random_range(8,-8),192+random_range(8,-8),depth-1,obj_sfx_explosion); 
        t1 = 0;
    }
}

if state = 1
{
    y+=1;
    t++;
    if t = 5
    {
        instance_create_depth(98+random_range(+16,-16),256+random_range(-8,0),depth-1,obj_sfx_sparkle_1_player)   ;
        instance_create_depth(98+random_range(+16,-16),256+random_range(-8,0),depth-1,obj_sfx_sparkle_1_player)   ;
        instance_create_depth(98+random_range(+16,-16),256+random_range(-8,0),depth-1,obj_sfx_sparkle_1_player)   ;
        instance_create_depth(98+random_range(+16,-16),256+random_range(-8,0),depth-1,obj_sfx_sparkle_1_player)   ; 
        t = 0;
        
    }
    t1++;
    if t1 = 20
    {
        t1 = 0;
        instance_create_depth(98+random_range(-4,4),260,depth-2,obj_sfx_dust_expl_big);
        instance_create_depth(98+random_range(-4,4),256+random_range(0,-8),depth-3,obj_sfx_dust_expl_small);
        fnc_snd_play_onetime(snd_j2_boss_walls);
    }
    
}
if y > 270-64 instance_destroy();