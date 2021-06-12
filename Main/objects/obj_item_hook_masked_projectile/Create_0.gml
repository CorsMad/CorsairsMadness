/// @description Insert description here
// You can write your code in this editor
spd = 0;
fspd = 0;
state = 1;
t = 0;
image_speed = 0;
depth = obj_Player.depth+1;
if obj_Player.dir = 1 
{
    dir = 1       
} else dir = -1;
isHooked = 0;

/* states 
1 - полет
2 - возвращение 
3 - если зацепил
