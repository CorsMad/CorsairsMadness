/// @description Insert description here
// You can write your code in this editor
x-=0.5;
y+=vspd;
vspd = lerp(vspd,0,0.1);
depth = -y;
#region Попадание

fnc_boat_take_dmg_pistol(random_range(-20,20),random_range(-60,-20),depth-1000,random_range(-20,20),random_range(-16,16),depth-1000)
fnc_boat_take_dmg_parrotcage(random_range(-20,20),random_range(-60,-20),depth-1000);
fnc_boat_take_dmg_blunderbuss(random_range(-20,20),random_range(-60,-20),depth-1000);
fnc_boat_take_dmg_fastshot(random_range(-20,20),random_range(-60,-20),depth-1000);

if enemy_hp <=0
{
    instance_create_depth(x,y,depth,obj_boat_boss_shadow_underwater_big_bubble_death);
    instance_destroy();   
}

#endregion   