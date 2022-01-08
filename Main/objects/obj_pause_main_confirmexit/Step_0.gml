/// @description Insert description here
// You can write your code in this editor
menu_input();
if delay!= 0 
{
    delay++;   
}
if delay = 5
{
    delay = 0;   
}


if delay = 0 
{
    if key_jump_pressed
    {
        room_goto(MainScreen); 
        if instance_exists(obj_Player)
        {
            instance_destroy(obj_Player);   
        }
        audio_stop_all();
    }
    if key_back_pressed
    {
        instance_destroy();
        obj_pause_main_controller.delay = 1;
    }
}