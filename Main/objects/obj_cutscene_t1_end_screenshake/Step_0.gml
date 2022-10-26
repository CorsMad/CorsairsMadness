/// @description Insert description here
// You can write your code in this editor

var far_far_3 = layer_get_id("Backgrounds_4");

layer_x(far_far_3, shake_x);
layer_y(far_far_3, shake_y);

shake_x = lerp(shake_x,0,0.1);
shake_y = lerp(shake_y,0,0.1);

t++;
if t = 10 
{
    t = 0;
    shake_x = random_range(-1,1);
    shake_y = random_range(-1,1);
}
if t mod 3 = 0 instance_create_depth(random_range(32,368),-32,choose(450,-1),obj_cutscene_t1_fallingbricks)