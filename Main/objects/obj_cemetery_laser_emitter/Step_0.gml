/// @description Insert description here
// You can write your code in this editor

if state = 0 // Начало 
{
    t++;
    if t > 50
    {
        image_speed -= 0.01;
    }
    if image_speed = 0
    {
        t = 0;
        image_index = 1;
        state = 1;
    }
}

if state = 1 // Создание луча
{
    t++;
    if t = 40
    {
        var l = instance_create_depth(x,y,depth,obj_cemetery_laser_beam); 
        l.angle = image_angle;
        l.a_max = length;
        t = 0;
        state = 2;
    }
}

if state = 2 // Изменение анимации
{
    t++;
    if t = 50
    {
        image_speed = 1.5;
        sprite_index = spr_cemetery_laser_emitter_fire;       
    }
    if t = 200//200
    {
        image_speed = 0;
        sprite_index = spr_cemetery_laser_emitter;
        image_index = 1;
        t = 0;
        state = 3;
    }
}

if state = 3 // возвращение к началу
{
    image_speed+=0.01
    {
        if image_speed = 1
        {
            state = 0;   
        }
    }
}
