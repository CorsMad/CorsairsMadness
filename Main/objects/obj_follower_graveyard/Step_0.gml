/// @description Insert description here
// You can write your code in this editor

/*
0 - появление
1 - преследование+атака
2 - полет
*/

switch(state)
{
    case 0:
        y = lerp(y,obj_Player.y,0.1);
        x = lerp(x,camera_get_view_x(view_camera[0])+48,0.5)
        if abs(x - (camera_get_view_x(view_camera[0])+48)) < 1
        {
            state = 1;   
        }
        break;
    case 1:
        x = camera_get_view_x(view_camera[0])+48;
        y = lerp(y,obj_Player.y,0.1);
        t++;
        if t = 200 
        {
            instance_create_depth(x,y,depth,obj_follower_grounded_laser_projectile);
            t = 0;
        }
        if t < 150 && attack = 1
        {
            t = 0;
            state = 2;
        }
        break;
    case 2:
        t++;
        x = camera_get_view_x(view_camera[0])+48;
        if t = 70
        {
            state = 3;   
        }
        break;
    case 3:
        x+=hspd;
        if hspd < 6 hspd+=1;
        if  x > camera_get_view_x(view_camera[0])+480+64 
        {
            instance_destroy();   
        }
    
}




