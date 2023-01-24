/// @description Insert description here
// You can write your code in this editor
x+=spd;

t++;
if t mod 5 = 0
{
    instance_create_depth(x,y,depth+1,obj_abil_boots_particles);   
}

if isDead = 1
{
    instance_create_depth(x,y,depth-1,obj_abil_arbalet_proj_d);
    instance_create_depth(x,y,depth-1,obj_sfx_electricity2);
    instance_destroy();
}