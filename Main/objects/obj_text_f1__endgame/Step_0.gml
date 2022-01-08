/// @description Insert description here
// You can write your code in this editor
if t < 1205
{
    t++;
}



if t > 701
{
    if keyboard_check(vk_enter) || gamepad_button_check(4,gp_start)
    {
        room_goto(MainScreen); 
        global.fTargetX = 32;
        global.fTargetY = 112;
        global.fTargetRoom = F1_r1;
        global.fhook = 0;
        global.Cutscene_f1_r33 = 1;
        audio_stop_all();
    }
}