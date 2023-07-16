/// @description Insert description here
// You can write your code in this editor
image_angle += anglspd;
x+=hspd;
y+=vspd;

vspd+=spd;



#region Попадание в воду

if vspd > 0 && y > y_cr + 32
{
    instance_create_depth(x,y,depth-1,obj_sfx_watersplash_pistol);
    instance_destroy();   
}
#endregion