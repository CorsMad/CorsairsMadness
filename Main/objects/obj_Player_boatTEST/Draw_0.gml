/// @description Insert description here
// You can write your code in this editor

#region Моргание
    
    
    if hit_cd!=0
    {
    	if round(hit_cd/5)*5 = hit_cd
    	{
    		if alpha = 1 
    		{
    			alpha = 0.4; 
    		} else alpha = 1;
    	}
    } else alpha = 1;
    
    if hit_cd < 6 && hit_cd > 0
    {
        col = c_red;   
    } else col = c_white;
    
#endregion    

if state = 0 || state = 1
{
    draw_sprite_ext(spr_player_boat,a,x,y+yob,1,1,rotat,col,alpha);   
}
if state = 0.1 // 2 пистолета
{
    draw_sprite_ext(spr_player_boat_dualpistols,a,x,y+yob,1,1,rotat,col,alpha);   
}
if state = 0.2 // бландербасс
{
    draw_sprite_ext(spr_player_boat_blunderbuss,a,x,y+yob,1,1,rotat,col,alpha);   
}
if state = 0.3 // Клетка
{
    draw_sprite_ext(spr_player_boat_parrot_cage,a,x,y+yob,1,1,rotat,col,alpha);   
}
if state = 0.4 // Быстровыстрел
{
    draw_sprite_ext(spr_player_boat_tripleshot,a,x,y+yob,1,1,rotat,col,alpha);   
}


if state = 3
{
    draw_sprite_ext(spr_player_boat_cannon,a,x,y+yob,1,1,0,col,alpha);
} 

if state = 9
{
    draw_sprite_ext(spr_player_boat_deah,a,x,y+yob,1,1,0,c_white,alpha);   
}

if (state >= 10 && state <= 11.1) || state > 12
{
    draw_sprite_ext(spr_ctsc_boat,1,x,y+yob,1,1,rotat,col,1);      
}
if  state = 11.2
{
    draw_sprite_ext(spr_ctsc_boat,1,x,y+yob,-1,1,rotat,col,1);       
}


