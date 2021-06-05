/// @description Insert description here
// You can write your code in this editor
if t < 1205
{
    t++;
}

if t = 900 
{
    if global.secrets = 0 
    {
        instance_create_depth(168,152,0,obj_rank_c);
    }
    
    if global.secrets = 1 
    {
        instance_create_depth(168,152,0,obj_rank_b);   
    }
    
    if global.secrets = 2 && global.gold < 800
    {
        instance_create_depth(168,152,0,obj_rank_b);    
    }
    
    if global.secrets = 2 && global.gold >= 800
    {
        instance_create_depth(168,152,0,obj_rank_a);
    }
    
    if  global.secrets = 3 && global.gold < 1000 
    {
        instance_create_depth(168,152,0,obj_rank_a);
    }
    
    if  global.secrets = 3 && global.gold >= 1000 
    {
        instance_create_depth(168,152,0,obj_rank_s);   
    }
}


if t > 1201
{
    if keyboard_check(ord("K"))
    {
        game_restart();
    }
}