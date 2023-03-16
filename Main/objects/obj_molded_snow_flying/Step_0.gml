/// @description Insert description here
// You can write your code in this editor
x+=hspd;
y+=vspd;
/*
0 - патруль
1 - перемещение
2 - атака
3 - ожидание
4 - отлет
5 - получение урона
6 - стан от крыльев
*/

if state = 0
{
    
}

if state = 1 //перемещение
{
    t++;
    if t >= 200
    {
        t = 0;
        state = 2;
        dir = point_direction(x,y,obj_Player.x,obj_Player.y-16);
    }
    if instance_exists(obj_Player)
    {
        x = lerp(x,obj_Player.x+sign(side)*80,0.1);
        y = lerp(y,obj_Player.y-16,0.1);
    }
}

if state = 2 //атака
{
    t++;
    if t=100
    {        
        if instance_exists(obj_Player) 
        {            
            hspeed = lengthdir_x(spd,dir);
            vspeed = lengthdir_y(spd,dir);
        }   
    }
    
    if t >= 150
    {
        hspeed = 0;
        vspeed = 0;
        t = 0;
        state = 3;
    }
}

if state = 3 // ожидание
{
    t++;
    if t = 50
    {
        if obj_Player.x > x side =-1; else side = 1;
        t = 0;
        state = 1;
    }
}

#region стан от крыльев

if place_meeting(x,y,obj_doublejump) && state!=6
{
    state = 6;   
    t = 0;
}

if state = 6
{
    hspeed = 0;
    vspeed = 0;
    if t < 160 t++;
    if (t = 150 && hspd = 0 && vspd = 0 ){t=0;state=1;}
}

#endregion

#region Получение урона

if hit_cd!=0 hit_cd++;
if hit_cd=10 hit_cd=0;

if hspd!=0 hspd = lerp(hspd,0,0.05);
if abs(hspd)<0.3 hspd = 0;

if vspd!=0 vspd = lerp(vspd,0,0.05);
if abs(vspd)<0.3 vspd = 0;

#region добивания

if place_meeting(x,y,obj_hitbox_mask_finisher) && hit_cd = 0
{
	hit_cd = 1;
    state = 6;
	t = 0;
    hspeed = 0;
    vspeed = 0;
	hspd = sign(obj_Player.dir)*2;
}

if place_meeting(x,y,obj_hitbox_mask_finisher_up) && hit_cd = 0
{
	hit_cd = 1;
	state = 6;
    t = 0;
	vspd = -3;
    hspeed = 0;
    vspeed = 0;
}

if place_meeting(x,y,obj_hitbox_mask_finisher_forward) && hit_cd = 0
{
	hit_cd = 1;
	state = 6;
    t = 0;
	hspd = sign(obj_Player.dir)*4;
    hspeed = 0;
    vspeed = 0;
}

if place_meeting(x,y,obj_hitbox_mask_finisher_down) && hit_cd = 0
{
	hit_cd = 1;
    state = 6;
    t = 0;
	vspd = 3
    hspeed = 0;
    vspeed = 0;
}

#endregion



//Dash
if place_meeting(x,y,obj_hitbox_mask_dash) && hit_cd = 0
{
	hit_cd = 1;
	obj_Player.image_index = 0;
    obj_Player.isRecoil = 1;
    obj_Player.vspd = -1;
    obj_Player.dashing_timer_count = 1;
	if state = 6 {hspd = sign(obj_Player.dir)*4;t = 0}; 	
}


//Атака
if hit_cd = 0 && place_meeting(x,y,obj_hitbox_mask)
{
    hit_cd = 1;
    if obj_Player.isGrounded = 0 
    {
        obj_Player.vspd = -1.2;
    }  
    
}

#endregion