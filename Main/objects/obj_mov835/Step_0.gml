if place_meeting(x,y,obj_block_slope_square)
{
    hspd = 1;   
    vspd = 0;
}
if place_meeting(x,y,obj_block_slope_squareup)
{
    hspd = 1;
    vspd = -1;
}
if place_meeting(x,y,obj_block_slope_squaredown)
{
    hspd = 1;
    vspd = 1;
}

x+=hspd;
y+=vspd;
