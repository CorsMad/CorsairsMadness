/// @description Insert description here
// You can write your code in this editor
x+= hspd;
y+= vspd;

if state = 0
{
    hspd -= 0.1;
    if hspd <=0
    {
        instance_create_depth(128,240,-1,obj_cutscene_JVArrive_player_draw);
        hspd = 0;
        image_index = 0;
        state = 1;
 
    }
}
if state = 2
{
    hspd += 0.1;
    if hspd >=0
    {
        var l = instance_create_depth(x,y-32,-1,obj_cutscene_JVArrive_player_draw);
        l.fspd = -2;
        hspd = 0;
        image_index = 0;
        state = 1;
 
    }
}
