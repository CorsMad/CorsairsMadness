y+=vspd;
vspd = lerp(vspd,0,0.1);
t++;

if t mod 5 == 0
{
        
	instance_create_depth(x+random_range(-12,12),y+random_range(0,-24),depth-1,obj_sfx2);
}
if t = 25 instance_destroy();
if t mod 10 = 0 instance_create_depth(x,y-16,depth-1,obj_sfx_sparkle_1);
