/// @description Insert description here
// You can write your code in this editor




if state = 0
{
     
    t++; 
    if t mod 10 == 0
	{
        fnc_snd_play_over(snd_boss_expl);
		instance_create_depth(x+random_range(-28,28),y+random_range(-12,+12),depth-1,obj_sfx_explosion_bomb);
	}

	if t mod 5 == 0
	{
        
		instance_create_depth(x+random_range(-28,28),y+random_range(-12,+12),depth-1,obj_sfx2);
	}
    if t = 50
    {
        state = 1
        t = 0;
    }
}

if (state = 1) { // переход вниз
    t++;
    if t = 14 t = 0;
    if t mod 10 == 0
	{
        fnc_snd_play_over(snd_boss_expl);
		instance_create_depth(x+random_range(-28,28),y+random_range(-12,+12),depth-1,obj_sfx_explosion_bomb);
	}

	if t mod 5 == 0
	{
        
		instance_create_depth(x+random_range(-28,28),y+random_range(-12,+12),depth-1,obj_sfx2);
	}
    y+=4;
    if y >= 270 + 32 
    {
        state = 2;
        t = 0;
    }
    
}

if (state = 2) {// Внизу

}


if (state = 3) { // в центр
    t++;
	if point_distance(x, y, 240, 160) > 2
	{
	    move_towards_point(240, 160, 2);
	}
    
	else 
	{
		speed = 0
		x = 240;
		y = 160;
        state = 4;
	}	
}