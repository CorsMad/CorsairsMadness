/// @description Insert description here
// You can write your code in this editor
player_input();

if key_left_press   choosed-=1;
if key_right_press  choosed+=1;

if choosed < 0 choosed = 3;
if choosed > 3 choosed = 0;

if  instance_exists(obj_maze2_but1) &&
    instance_exists(obj_maze2_but2) &&
    instance_exists(obj_maze2_but3) &&
    instance_exists(obj_maze2_but4) 
{
    if key_jump
    {
        switch(choosed)
        {
            case 0:
                obj_maze2_but1.sw+=1;
                obj_maze2_but2.sw+=1;
                break;
            case 1:
                obj_maze2_but1.sw+=1;
                obj_maze2_but2.sw+=1;
                obj_maze2_but3.sw+=1;
                break;
            case 2:
                obj_maze2_but2.sw+=1;
                obj_maze2_but3.sw+=1;
                obj_maze2_but4.sw+=1;
                break;
            case 3:
                obj_maze2_but3.sw+=1;
                obj_maze2_but4.sw+=1;
                break;
        }   
    }    
}