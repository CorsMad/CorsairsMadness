/// @description Insert description here
// You can write your code in this editor
fnc_msc_start_checkpoint(msc_main_menu);

#region Разное

confirm_eng = @"do you want to start new game ?
all previous progress will be lost";

#endregion

#region mainmenu

menu[0, 0] = "continue";
menu[0, 1] = "new game";
menu[0, 2] = "options";
menu[0, 3] = "credits";
menu[0, 4] = "exit";   

#endregion

#region options
menu[1, 0] = "Graphics";
menu[1, 1] = "Controls";
menu[1, 2] = "Sound";
menu[1, 3] = "language";
menu[1, 4] = "\nback";
#endregion

#region graphics
menu[2, 0] = "full screen";
menu[2, 1] = "1920 x 1080";
menu[2, 2] = "1600 x 900";
menu[2, 3] = "1366 x 768";
menu[2, 4] = "1280 x 720";
menu[2, 5] = "800 x 600";
menu[2, 6] = "\nback";
#endregion

#region controls

menu[3, 0] = "keyboard settings";
menu[3, 1] = "gamepad settings";
menu[3, 2] = "\nback";

#region controls submenu

menu[31, 0] = "up";
menu[31, 1] = "down";
menu[31, 2] = "left";
menu[31, 3] = "right";
menu[31, 4] = "jump";
menu[31, 5] = "attack";
menu[31, 6] = "dash";
menu[31, 7] = "item";
menu[31, 8] = "spec ability";
menu[31, 9] = "default 1";
menu[31, 10] = "default 2";
menu[31, 11] = "\nback";

menu[32, 0] = "\n\n\n\n\n\n\nback";


#endregion

#endregion

#region Language

menu[41, 0]  = "english";
menu[41, 1]  = "РУССКИЙ";
menu[41, 2]  = "Español";
menu[41, 3]  = "中国";
menu[41, 4]  = "Português";
menu[41, 5]  = "Português (brasileiro)";
menu[41, 6]  = "Polska";
menu[41, 7]  = "日本語";
menu[41, 8]  = "Deutsch";
menu[41, 9] = "Français";
menu[41, 10] = "\nback";

#endregion


#region sound
menu[4, 0] = "music";
menu[4, 1] = "\n\nsfx";
menu[4, 2] = "\n\n\n\nback";
#endregion

#region Confirm

menu[5, 0] = "\n\n\n\n\n\n\n\n\n\n\n\nyes";
menu[5, 1] = "\n\n\n\n\n\n\n\n\n\n\n\nno";

#endregion

#region Credits

menu[6,0] = "\n\n\n\n\n\n\n\n\n\nback";
musiccred = "thanks for awesome music"
#endregion


#region Ползунки музыки и эффектов
sfx = global.SFXvolume;
music = global.MSCvolume;
#endregion

#region Настройка управления
KBControlChange = 0;

#endregion

index = 1;
submenu = 0;
title_alpha = 1;
t_sfx = 0;
#region TEST

pk_up = fnc_keyboard_key_change(global.up_key);
pk_down = fnc_keyboard_key_change(global.down_key);
pk_left = fnc_keyboard_key_change(global.left_key);
pk_right = fnc_keyboard_key_change(global.right_key);
pk_jump = fnc_keyboard_key_change(global.jump_key);
pk_attack = fnc_keyboard_key_change(global.attack_key);
pk_dash = fnc_keyboard_key_change(global.dash_key);
pk_use_item = fnc_keyboard_key_change(global.item_key);
pk_use_abil = fnc_keyboard_key_change(global.abil_key);
pk_weapon_select = fnc_keyboard_key_change(global.select_key);


delay = 0;
#endregion