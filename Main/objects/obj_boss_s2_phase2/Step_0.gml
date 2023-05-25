/// @description Insert description here
// You can write your code in this editor
/*
  0 - начало
  1 - полет в игрока
  2 - если попал в игрока
  3 - если отбился
*/

#region Anim
t_anim++;
if t_anim = 5
{
    instance_create_depth(x+random_range(-10,10),y+random_range(-5,-30),depth+1,choose(obj_boss_s2_phase2_part1,obj_boss_s2_phase2_part2));
    t_anim = 0;   
}
#endregion


if (state = 0) { // начало
    t++;
    if t = 50 {
        state = 1;
        t = 0;
    }
}

if (state = 1) {// полет в игрока
    
    if instance_exists(obj_Player) 
    {
        var dir = point_direction(x,y,obj_Player.x,obj_Player.y-8);         
    }

    hspeed = lengthdir_x(spd,dir);
    vspeed = lengthdir_y(spd,dir);    
}

if place_meeting(x,y,obj_Player) && state = 1
{
    state = 2;    
    t = 0;
    spd = -5
}

if state = 2
{
    if instance_exists(obj_Player) 
    {
        var dir = point_direction(x,y,obj_Player.x,obj_Player.y-8);         
    }
    hspeed = lengthdir_x(spd,dir);
    vspeed = lengthdir_y(spd,dir); 
    spd = lerp(spd,0,0.1);
    t++;
    if t = 100{
        t =0;
        state = 1;
    }  
}

if ((spd < spd_max) && state = 1) spd = lerp(spd,spd_max,0.075);


#region Получение урона
if (place_meeting(x,y,obj_hitbox) || place_meeting(x,y,obj_hitbox_down) )&& hit_cd = 0 && state = 1
{
    spd = -10
    hit_cd = 1;
    spd_max+=0.1;
    enemy_hp-=1;
    state = 1;
    t = 0;
    t_red = 1;
}
if hit_cd!=0 hit_cd++;
if hit_cd=11 hit_cd = 0;

if t_red!=0 {t_red++;image_blend = c_red;}
if t_red=5 {t_red=0;image_blend = c_white;}


#endregion

#region смерть
if enemy_hp <= 0
{
    instance_create_depth(x,y,0,obj_boss_s2_phase2_death)   ;
    instance_destroy();
}
#endregion
