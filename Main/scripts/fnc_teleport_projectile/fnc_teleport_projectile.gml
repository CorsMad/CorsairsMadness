// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fnc_teleport_projectile()
{
    var i1 = instance_create_depth(x,y-16,obj_Player.depth+1,obj_tp_projectile);
    i1.hspd = -4;
    i1.vspd = -4;
    i1.l = 0.05;
    var i2 = instance_create_depth(x,y-16,obj_Player.depth+1,obj_tp_projectile);
    i2.hspd = -2;
    i2.vspd = -6;
    i2.l = 0.04;
    var i3 = instance_create_depth(x,y-16,obj_Player.depth+1,obj_tp_projectile);
    i3.hspd = -4;
    i3.vspd = -2;
    i3.l = 0.06;
    var i4 = instance_create_depth(x,y-16,obj_Player.depth+1,obj_tp_projectile);
    i4.hspd = 4;
    i4.vspd = -4;
    i4.l = 0.05;
    var i5 = instance_create_depth(x,y-16,obj_Player.depth+1,obj_tp_projectile);
    i5.hspd = 2;
    i5.vspd = -6;
    i5.l = 0.04;
    var i6 = instance_create_depth(x,y-16,obj_Player.depth+1,obj_tp_projectile);
    i6.hspd = 4;
    i6.vspd = -2;
    i6.l = 0.06;
    fnc_snd_play_onetime(snd_teleport_start);
}