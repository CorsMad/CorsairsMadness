/// @description Insert description here
// You can write your code in this editor
if t < 902
{
    t++;
}

if t > 901
{
    if keyboard_check(vk_enter) || gamepad_button_check(4,gp_start)
    {
        room_goto(MainScreen); 
        global.TargetX = 32;
        global.TargetY = 224;
        global.TargetRoom = L1_r1;
        global.money_saved = 0;
        global.gold = 0;
        global.secrets = 0;
        global.boatCheckpoint = 0;
        global.dash = 0;
        audio_stop_all();
    }
}