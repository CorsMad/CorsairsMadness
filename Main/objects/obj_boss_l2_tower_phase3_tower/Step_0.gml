/// @description Insert description here
// You can write your code in this editor
y+=3
t++;
t1++;

if t = 5 
{
    t =0;
    instance_create_depth(x+240+random_range(+16,-16),y+74+random_range(-16,16),depth-1,obj_sfx_sparkle_1_player)   ;
    instance_create_depth(x+240+random_range(+16,-16),y+74+random_range(-16,16),depth-1,obj_sfx_sparkle_1_player)   ;
    instance_create_depth(x+240+random_range(+16,-16),y+74+random_range(-16,16),depth-1,obj_sfx_sparkle_1_player)   ;
    instance_create_depth(x+240+random_range(+16,-16),y+74+random_range(-16,16),depth-1,obj_sfx_sparkle_1_player)   ;       
}

if t1 = 50
{
    instance_create_depth(x+240+random_range(8,-8),y+74+random_range(8,-8),depth-1,obj_sfx_explosion); 
    t1 = 0;
}

if y > 300 instance_destroy();