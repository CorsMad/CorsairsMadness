/// @description Insert description here
// You can write your code in this editor

if state = 0  // от игрока
{
    x+=acc;
    t++;
    
    if t >= t_max
    {
        acc = lerp(acc,0,0.2);
        if acc > 0
        {
            if acc <= 0.05
            {
                acc = 0;
                t = 0;
                state = 1;
            }
        }
        if acc < 0
        {
            if acc >= -0.05
            {
                acc = 0;
                t = 0;
                state = 1;
            }
        }
        
    }
}

if state = 1 // К игроку
{
    acc=lerp(acc,8,0.2);
    var dir2 = point_direction(x,y,obj_Player.x,obj_Player.y-16);
    hspeed = lengthdir_x(acc,dir2);
    vspeed = lengthdir_y(acc,dir2);
    if place_meeting(x,y,obj_Player)
    {
        destr_timer++;
        if destr_timer >= 4
        {
            instance_destroy();  
            fnc_snd_play_over(snd_player_landing);
        }
    }
}
 if acc!=0
 {
	 if acc > 0 image_speed = 1.25; 
	 if acc < 0 image_speed = -1.25;
    //image_speed = acc/1.5;   
 }




/*
if instance_exists(obj_item_boomerang_dot) {
    if place_meeting(x,y,obj_item_boomerang_dot) {
        instance_destroy(obj_item_boomerang_dot);
        toDot = 0;
        acc = 0;
    }
}
if toDot = 1 {
    acc -= 1;
    var dir1 = point_direction(x,y,obj_item_boomerang_dot.x,obj_item_boomerang_dot.y);
    hspeed = lengthdir_x(acc,dir1);
    vspeed = lengthdir_y(acc,dir1);
}
if toDot = 0 {
    if acc <=8{
        acc+=1;
    }
    var dir2 = point_direction(x,y,obj_Player.x,obj_Player.y-16);
    hspeed = lengthdir_x(acc,dir2);
    vspeed = lengthdir_y(acc,dir2);
}
if toDot = 0 && place_meeting(x,y,obj_Player){  
    TimerDeath+=1;
}
if TimerDeath > 0 {
    sprite_index = spr_blank;
    TimerDeath+=1;
}
if TimerDeath = 6 {
    instance_destroy();
}
image_speed = 0.5*acc;
*/