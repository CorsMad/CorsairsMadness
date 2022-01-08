x+=spd;
y+=vspd;
vspd +=0.15;
if isDead = 1
{
    instance_create_depth(x,y,depth-1,obj_sfx_explosion_bomb);   
    instance_destroy();
}