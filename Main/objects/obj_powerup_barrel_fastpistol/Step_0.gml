/// @description Insert description here
// You can write your code in this editor
depth = -y;
if isDead = 0
{
    y = y + cos(a)/5;
	a+= 0.05;
    x+=hspd;
}

if enemy_hp<=0 
{
    b++;
    instance_create_depth(x+4,y-20,depth-1,obj_sfx_dust_expl_big);
	instance_create_depth(x,y-24,depth-1,obj_boat_power_fastpistol);
	fnc_snd_play_over(snd_bomb_block_destr);
	instance_create_depth(x+8,y-18,depth-2,obj_sfx_explosion);
	instance_destroy();
}



fnc_boat_take_dmg_pistol(1)

fnc_boat_take_dmg_dual_pistol(1,1,1) 

fnc_boat_take_dmg_cannon(1) 

fnc_boat_take_dmg_parrotcage(1,1,1,1)

fnc_boat_take_dmg_blunderbuss(1)

fnc_boat_take_dmg_fastshot(1,1)


//fnc_boat_destroyer();