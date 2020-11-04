/// @description Insert description here
// You can write your code in this editor
if c != c_max {
    c += 1;
}

if c = c_max {
    image_alpha -= 0.01;
    if image_alpha = 0 {
        instance_destroy();
    }
}