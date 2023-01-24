// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/*
switch(global.language)
{
    case 0: //English        
        break;
    case 1: //russian
        break;
    case 2: //spanish
        break;
    case 3: //chinese
        break;
    case 4: //portug
        break;
    case 5: //brazil
        break;
    case 6: //polish
        break;
    case 7: //turkey
        break;
    case 8: //japanese
        break;
    case 9: //deutch
        break;
    case 10: //french
        break;
}
*/



function fnc_lng_main_menu(){
    
switch(global.language)
{
    case 0: //English
        #region
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
            
            #region Language
            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português";
            menu[41, 5]  = "Português (brasileiro)";
            menu[41, 6]  = "Polska";
            menu[41, 7]  = "Türkçe";
            menu[41, 8]  = "日本語";
            menu[41, 9]  = "Deutsch";
            menu[41, 10] = "Français";
            menu[41, 11] = "Italiano";
            menu[41, 12] = "\nback";

            #endregion
            
        #endregion
        break;
    case 1: //russian
        #region
            #region Разное

            confirm_eng = @"ХОТИТЕ НАЧАТЬ НОВУЮ ИГРУ?
ВЕСЬ ПРОГРЕСС БУДЕТ УДАЛЁН";

            #endregion

            #region mainmenu

            menu[0, 0] = "ПРОДОЛЖИТЬ";
            menu[0, 1] = "НОВАЯ ИГРА";
            menu[0, 2] = "НАСТРОЙКИ";
            menu[0, 3] = "КРЕДИТЫ";
            menu[0, 4] = "ВЫХОД";   

            #endregion

            #region options
            menu[1, 0] = "ГРАФИКА";
            menu[1, 1] = "УПРАВЛЕНИЕ";
            menu[1, 2] = "ЗВУК";
            menu[1, 3] = "ЯЗЫК";
            menu[1, 4] = "\nНАЗАД";
            #endregion

            #region graphics
            menu[2, 0] = "ПОЛНЫЙ ЭКРАН";
            menu[2, 1] = "1920 x 1080";
            menu[2, 2] = "1600 x 900";
            menu[2, 3] = "1366 x 768";
            menu[2, 4] = "1280 x 720";
            menu[2, 5] = "800 x 600";
            menu[2, 6] = "\nНАЗАД";
            #endregion

            #region controls

            menu[3, 0] = "НАСТРОЙКА КЛАВИАТУРЫ";
            menu[3, 1] = "НАСТРОЙКА ГЕЙМПАДА";
            menu[3, 2] = "\nНАЗАД";

            #region controls submenu

            menu[31, 0] = "ВВЕРХ";
            menu[31, 1] = "ВНИЗ";
            menu[31, 2] = "ВЛЕВО";
            menu[31, 3] = "ВПРАВО";
            menu[31, 4] = "ПРЫЖОК";
            menu[31, 5] = "УДАР";
            menu[31, 6] = "РЫВОК";
            menu[31, 7] = "ПРЕДМЕТ";
            menu[31, 8] = "ОСОБ. СПОСОБНОСТЬ";
            menu[31, 9] = "ПО УМОЛЧАНИЮ 1";
            menu[31, 10] = "ПО УМОЛЧАНИЮ 2";
            menu[31, 11] = "\nНАЗАД";

            menu[32, 0] = "\n\n\n\n\n\n\n\nНАЗАД";


            #endregion

            #endregion

            #region sound
            menu[4, 0] = "МуЗыКА";
            menu[4, 1] = "\n\n\nЭФФЕКТЫ";
            menu[4, 2] = "\n\n\n\n\n\nНАЗАД";
            #endregion

            #region Confirm

            menu[5, 0] = "\n\n\n\n\n\n\n\n\n\n\n\nДА";
            menu[5, 1] = "\n\n\n\n\n\n\n\n\n\n\n\nНЕТ";

            #endregion

            #region Credits

            menu[6,0] = "\n\n\n\n\n\n\n\n\n\nНАЗАД";
            musiccred = "СПАСИБО ЗА СУПЕР МУЗЫКУ";
            #endregion
            
            #region Language
            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português";
            menu[41, 5]  = "Português (brasileiro)";
            menu[41, 6]  = "Polska";
            menu[41, 7]  = "Türkçe";
            menu[41, 8]  = "日本語";
            menu[41, 9]  = "Deutsch";
            menu[41, 10] = "Français";
            menu[41, 11] = "Italiano";
            menu[41, 12] = "\nназад";
            

            #endregion
            
        #endregion
        break;
    case 2: //spanish
        break;
    case 3: //chinese
        #region
             #region Разное

            confirm_eng = @"你想开始新游戏吗?
以前的所有进展将丢失.";

            #endregion

            #region mainmenu

            menu[0, 0] = "继续";
            menu[0, 1] = "新游戏";
            menu[0, 2] = "游戏设置";
            menu[0, 3] = "学分";
            menu[0, 4] = "退出";   

            #endregion

            #region options
            menu[1, 0] = "图形";
            menu[1, 1] = "控制键";
            menu[1, 2] = "声音";
            menu[1, 3] = "语言设置";
            menu[1, 4] = "\n回去";
            #endregion

            #region graphics
            menu[2, 0] = "全屏";
            menu[2, 1] = "1920 x 1080";
            menu[2, 2] = "1600 x 900";
            menu[2, 3] = "1366 x 768";
            menu[2, 4] = "1280 x 720";
            menu[2, 5] = "800 x 600";
            menu[2, 6] = "\n回去";
            #endregion

            #region controls

            menu[3, 0] = "键盘设置";
            menu[3, 1] = "手柄设置";
            menu[3, 2] = "\n回去";

            #region controls submenu

            menu[31, 0] = "向上";
            menu[31, 1] = "向下";
            menu[31, 2] = "左边";
            menu[31, 3] = "右边";
            menu[31, 4] = "跳";
            menu[31, 5] = "突击";
            menu[31, 6] = "突";
            menu[31, 7] = "项目";
            menu[31, 8] = "专长";
            menu[31, 9] = "缺省 1";
            menu[31, 10] = "缺省 2";
            menu[31, 11] = "\n回去";

            menu[32, 0] = "\n\n\n\n\n\n\n回去";


            #endregion

            #endregion

            #region sound
            menu[4, 0] = "音乐";
            menu[4, 1] = "\n\nSFX";
            menu[4, 2] = "\n\n\n\n回去";
            #endregion

            #region Confirm

            menu[5, 0] = "\n\n\n\n\n\n\n\n\n\n\n对";
            menu[5, 1] = "\n\n\n\n\n\n\n\n\n\n\n不";

            #endregion

            #region Credits

            menu[6,0] = "\n\n\n\n\n\n\n\n\n\n回去";
            musiccred = "thanks for awesome music"
            #endregion
            
            #region Language
            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português";
            menu[41, 5]  = "Português (brasileiro)";
            menu[41, 6]  = "Polska";
            menu[41, 7]  = "Türkçe";
            menu[41, 8]  = "日本語";
            menu[41, 9]  = "Deutsch";
            menu[41, 10] = "Français";
            menu[41, 11] = "Italiano";
            menu[41, 12] = "\n回去";            

            #endregion
        #endregion    
        break;
    case 4: //portug
        break;
    case 5: //brazil
        break;
    case 6: //polish
        break;
    case 7: //turkey
        break;
    case 8: //japanese
        break;
    case 9: //deutch
        break;
    case 10: //french
        break;
    case 11: // Italian
        #region
             #region Разное

            confirm_eng = @"Vuoi iniziare una nuova partita?
Tutti I progressi precedenti andranno persi.";

            #endregion

            #region mainmenu

            menu[0, 0] = "Continua";
            menu[0, 1] = "Nuova partita";
            menu[0, 2] = "Impostazioni di gioco";
            menu[0, 3] = "Titoli";
            menu[0, 4] = "Exit";   

            #endregion

            #region options
            menu[1, 0] = "Grafica";
            menu[1, 1] = "Tasti";
            menu[1, 2] = "Audio";
            menu[1, 3] = "Impostazioni della lingua";
            menu[1, 4] = "\nTorna";
            #endregion

            #region graphics
            menu[2, 0] = "Schermo intero";
            menu[2, 1] = "1920 x 1080";
            menu[2, 2] = "1600 x 900";
            menu[2, 3] = "1366 x 768";
            menu[2, 4] = "1280 x 720";
            menu[2, 5] = "800 x 600";
            menu[2, 6] = "\nTorna";
            #endregion

            #region controls

            menu[3, 0] = "Impostazioni della tastiera";
            menu[3, 1] = "Impostazioni del gamepad";
            menu[3, 2] = "\nTorna";

            #region controls submenu

            menu[31, 0] = "Sopra";
            menu[31, 1] = "Giù";
            menu[31, 2] = "Sinistra";
            menu[31, 3] = "Destro";
            menu[31, 4] = "Saltare";
            menu[31, 5] = "Assalire";
            menu[31, 6] = "Lanciarsi";
            menu[31, 7] = "Articolo";
            menu[31, 8] = "Abilità speciale";
            menu[31, 9] = "Predefinito 1";
            menu[31, 10] = "Predefinito 2";
            menu[31, 11] = "\nTorna";

            menu[32, 0] = "\n\n\n\n\n\n\nTorna";


            #endregion

            #endregion

            #region sound
            menu[4, 0] = "Musica";
            menu[4, 1] = "\n\nsfx";
            menu[4, 2] = "\n\n\n\nTorna";
            #endregion

            #region Confirm

            menu[5, 0] = "\n\n\n\n\n\n\n\n\n\n\nSì";
            menu[5, 1] = "\n\n\n\n\n\n\n\n\n\n\nNo";

            #endregion

            #region Credits

            menu[6,0] = "\n\n\n\n\n\n\n\n\n\nTorna";
            musiccred = "thanks for awesome music"
            #endregion
            
            #region Language
            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português";
            menu[41, 5]  = "Português (brasileiro)";
            menu[41, 6]  = "Polska";
            menu[41, 7]  = "Türkçe";
            menu[41, 8]  = "日本語";
            menu[41, 9]  = "Deutsch";
            menu[41, 10] = "Français";
            menu[41, 11] = "Italiano";
            menu[41, 12] = "\nTorna";

            #endregion
            
        #endregion
        break;
}

}

function fnc_lng_pause_ingame(){
    switch(global.language)
    {
        case 0: //English 
        #region ENG
        
            #region mainmenu
            menu[0, 0] = "options";
            menu[0, 1] = "\nresume";
            menu[0, 2] = "\nback to map";
            menu[0, 3] = "\nexit to main menu";

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

            #region sound
            menu[4, 0] = "music";
            menu[4, 1] = "\n\nsfx";
            menu[4, 2] = "\n\n\n\nback";
            #endregion

            #region Language

            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português";
            menu[41, 5]  = "Português (brasileiro)";
            menu[41, 6]  = "Polska";
            menu[41, 7]  = "Türkçe";
            menu[41, 8]  = "日本語";
            menu[41, 9]  = "Deutsch";
            menu[41, 10] = "Français";
            menu[41, 11] = "Italiano";
            menu[41, 12] = "\nback";

            #endregion
    
            #region ПОдтверждения

            #region Подтверждения выхода на карту
            menu[10,0] = "\n\n\n\n\nyes";
            menu[10,1] = "\n\n\n\n\nno";

            #endregion

            #region Подтверждения выхода в меню
            menu[11,0] = "\n\n\nyes";
            menu[11,1] = "\n\n\nno";

            #endregion

            confirm1 = @"Are you sure? 
You'll lose all the gold you've collected
on the level, but you'll keep the secrets 
you've found";

            confirm2 = @"are you sure?
All unsaved progress will be lost";
            #endregion

#endregion
            break;
        case 1: //russian
        
        #region russian
        
        #region mainmenu
        menu[0, 0] = "опции";
        menu[0, 1] = "\nвозобновить";
        menu[0, 2] = "\nна карту";
        menu[0, 3] = "\nв главное меню";

        #endregion

        #region options
        menu[1, 0] = "Графика";
        menu[1, 1] = "управление";
        menu[1, 2] = "звук";
        menu[1, 3] = "язык";
        menu[1, 4] = "\nназад";
        #endregion

        #region graphics
        menu[2, 0] = "полный экран";
        menu[2, 1] = "1920 x 1080";
        menu[2, 2] = "1600 x 900";
        menu[2, 3] = "1366 x 768";
        menu[2, 4] = "1280 x 720";
        menu[2, 5] = "800 x 600";
        menu[2, 6] = "\nназад";
        #endregion

        #region controls

        menu[3, 0] = "настройка клавиатуры";
        menu[3, 1] = "настройка геймпада";
        menu[3, 2] = "\nназад";

        #region controls submenu

        menu[31, 0] = "ВВЕРХ";
        menu[31, 1] = "ВНИЗ";
        menu[31, 2] = "ВЛЕВО";
        menu[31, 3] = "ВПРАВО";
        menu[31, 4] = "ПРЫЖОК";
        menu[31, 5] = "УДАР";
        menu[31, 6] = "РЫВОК";
        menu[31, 7] = "ПРЕДМЕТ";
        menu[31, 8] = "ОСОБ. СПОСОБНОСТЬ";
        menu[31, 9] = "ПО УМОЛЧАНИЮ 1";
        menu[31, 10] = "ПО УМОЛЧАНИЮ 2";
        menu[31, 11] = "\nНАЗАД"

        menu[32, 0] = "\n\n\n\n\n\n\n\nназад";

        #endregion

        #endregion

        #region sound
        menu[4, 0] = "музыка";
        menu[4, 1] = "\n\n\nэффекты";
        menu[4, 2] = "\n\n\n\n\nназад";
        #endregion

        #region Language

        menu[41, 0]  = "english";
        menu[41, 1]  = "русский";
        menu[41, 2]  = "Español";
        menu[41, 3]  = "中国";
        menu[41, 4]  = "Português";
        menu[41, 5]  = "Português (brasileiro)";
        menu[41, 6]  = "Polska";
        menu[41, 7]  = "Türkçe";
        menu[41, 8]  = "日本語";
        menu[41, 9]  = "Deutsch";
        menu[41, 10] = "Français";
        menu[41, 11] = "Italiano";
        menu[41, 12] = "\nназад";

        #endregion

        #region ПОдтверждения

        #region Подтверждения выхода на карту
        menu[10,0] = "\n\n\n\n\nда";
        menu[10,1] = "\n\n\n\n\nнет";

        #endregion

        #region Подтверждения выхода в меню
        menu[11,0] = "\n\n\nда";
        menu[11,1] = "\n\n\nнет";

        #endregion

        confirm1 = @"Вы уверены? 
Вы потеряете все заработанное золото на уровне,
но сохраните найденные секреты";

        confirm2 = @"вы уверены?
весь несохраненный прогресс будет утерян";
        #endregion
        
        #endregion
        
            break;
        case 2: //spanish
            break;
        case 3: //chinese
        #region CN
        
            #region chinese
            menu[0, 0] = "游戏设置";
            menu[0, 1] = "\n收回";
            menu[0, 2] = "\n返回地图";
            menu[0, 3] = "\n退到主菜單";

            #endregion

            #region options
            menu[1, 0] = "图形";
            menu[1, 1] = "控制键";
            menu[1, 2] = "声音";
            menu[1, 3] = "语言设置";
            menu[1, 4] = "\n回去";
            #endregion

            #region graphics
            menu[2, 0] = "全屏";
            menu[2, 1] = "1920 x 1080";
            menu[2, 2] = "1600 x 900";
            menu[2, 3] = "1366 x 768";
            menu[2, 4] = "1280 x 720";
            menu[2, 5] = "800 x 600";
            menu[2, 6] = "\n回去";
            #endregion

            #region controls

            menu[3, 0] = "键盘设置";
            menu[3, 1] = "手柄设置";
            menu[3, 2] = "\n回去";

            #region controls submenu

            menu[31, 0] = "向上";
            menu[31, 1] = "向下";
            menu[31, 2] = "左边";
            menu[31, 3] = "右边";
            menu[31, 4] = "跳";
            menu[31, 5] = "突击";
            menu[31, 6] = "突";
            menu[31, 7] = "项目";
            menu[31, 8] = "专长";
            menu[31, 9] = "缺省 1";
            menu[31, 10] = "缺省 2";
            menu[31, 11] = "\n回去";

            menu[32, 0] = "\n\n\n\n\n\n\n回去";

            #endregion

            #endregion

            #region sound
            menu[4, 0] = "音乐";
            menu[4, 1] = "\n\nsfx";
            menu[4, 2] = "\n\n\n\n回去";
            #endregion

            #region Language

            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português";
            menu[41, 5]  = "Português (brasileiro)";
            menu[41, 6]  = "Polska";
            menu[41, 7]  = "Türkçe";
            menu[41, 8]  = "日本語";
            menu[41, 9]  = "Deutsch";
            menu[41, 10] = "Français";
            menu[41, 11] = "Italiano";
            menu[41, 12] = "\n回去";

            #endregion
    
            #region ПОдтверждения

            #region Подтверждения выхода на карту
            menu[10,0] = "\n\n\n\n\n对";
            menu[10,1] = "\n\n\n\n\n不";

            #endregion

            #region Подтверждения выхода в меню
            menu[11,0] = "\n\n\n对";
            menu[11,1] = "\n\n\n不";

            #endregion

            confirm1 = @"你确定吗? 
你会失去到目前为止收集的所有金币,
但你会保留你发现的秘密.";

            confirm2 = @"你确定吗?
所有未保存的进度都将丢失";
            #endregion

#endregion
            break;
        case 4: //portug
            break;
        case 5: //brazil
            break;
        case 6: //polish
            break;
        case 7: //turkey
            break;
        case 8: //japanese
            break;
        case 9: //deutch
            break;
        case 10: //french
            break;
        case 11: // Italian
              #region ENG
        
            #region mainmenu
            menu[0, 0] = "Impostazioni di gioco";
            menu[0, 1] = "\nResume ";
            menu[0, 2] = "\nTorna alla mappa";
            menu[0, 3] = "\nMenu principale";

            #endregion

            #region options
            menu[1, 0] = "Grafica";
            menu[1, 1] = "Tasti";
            menu[1, 2] = "Audio";
            menu[1, 3] = "Impostazioni della lingua";
            menu[1, 4] = "\nTorna";
            #endregion

            #region graphics
            menu[2, 0] = "Schermo intero";
            menu[2, 1] = "1920 x 1080";
            menu[2, 2] = "1600 x 900";
            menu[2, 3] = "1366 x 768";
            menu[2, 4] = "1280 x 720";
            menu[2, 5] = "800 x 600";
            menu[2, 6] = "\nTorna";
            #endregion

            #region controls

            menu[3, 0] = "Impostazioni della tastiera";
            menu[3, 1] = "Impostazioni del gamepad";
            menu[3, 2] = "\nTorna";

            #region controls submenu

            menu[31, 0] = "Sopra";
            menu[31, 1] = "Giù";
            menu[31, 2] = "Sinistra";
            menu[31, 3] = "Destro";
            menu[31, 4] = "Saltare";
            menu[31, 5] = "Assalire";
            menu[31, 6] = "Lanciarsi";
            menu[31, 7] = "Articolo";
            menu[31, 8] = "Abilità speciale";
            menu[31, 9] = "Predefinito 1";
            menu[31, 10] = "Predefinito 2";
            menu[31, 11] = "\nTorna";

            menu[32, 0] = "\n\n\n\n\n\n\nTorna";

            #endregion

            #endregion

            #region sound
            menu[4, 0] = "Musica";
            menu[4, 1] = "\n\nsfx";
            menu[4, 2] = "\n\n\n\nTorna";
            #endregion

            #region Language

            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português";
            menu[41, 5]  = "Português (brasileiro)";
            menu[41, 6]  = "Polska";
            menu[41, 7]  = "Türkçe";
            menu[41, 8]  = "日本語";
            menu[41, 9]  = "Deutsch";
            menu[41, 10] = "Français";
            menu[41, 11] = "Italiano";
            menu[41, 12] = "\nTorna";

            #endregion
    
            #region ПОдтверждения

            #region Подтверждения выхода на карту
            menu[10,0] = "\n\n\n\n\nSì";
            menu[10,1] = "\n\n\n\n\nNo";

            #endregion

            #region Подтверждения выхода в меню
            menu[11,0] = "\n\n\nSì";
            menu[11,1] = "\n\n\nNo";

            #endregion

            confirm1 = @"Sei sicuro? 
Perderai tutto l'oro che hai raccolto finora,
ma conserverai i segreti che hai scoperto.";

            confirm2 = @"Sei sicuro?
Tutti i progressi non salvati andranno persi";
            #endregion

#endregion
            break;
    }
}

function fnc_lng_pause_junglecourse(){
    switch(global.language)
    {
        case 0: //English  
        #region ENG
            #region mainmenu
            menu[0, 0] = "options";
            menu[0, 1] = "\nresume";
            menu[0, 2] = "\nback to village";
            menu[0, 3] = "\nexit to main menu";

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

            #region sound
            menu[4, 0] = "music";
            menu[4, 1] = "\n\nsfx";
            menu[4, 2] = "\n\n\n\nback";
            #endregion

            #region Language

            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português";
            menu[41, 5]  = "Português (brasileiro)";
            menu[41, 6]  = "Polska";
            menu[41, 7]  = "Türkçe";
            menu[41, 8]  = "日本語";
            menu[41, 9]  = "Deutsch";
            menu[41, 10] = "Français";
            menu[41, 11] = "Italiano";
            menu[41, 12] = "\nback";

            #endregion

            #region ПОдтверждения

            #region Подтверждения выхода на карту
            menu[10,0] = "\n\nyes";
            menu[10,1] = "\n\nno";

            #endregion

            #region Подтверждения выхода в меню
            menu[11,0] = "\n\n\nyes";
            menu[11,1] = "\n\n\nno";

            #endregion

            confirm1 = "Are you sure?";

            confirm2 = @"are you sure?
All unsaved progress will be lost";
            #endregion
            
            #endregion
            break;
        case 1: //russian
        #region RUS
        
        #region mainmenu
menu[0, 0] = "опции";
menu[0, 1] = "\nвозобновить";
menu[0, 2] = "\nв деревню";
menu[0, 3] = "\nв главное меню";

#endregion

        #region options
        menu[1, 0] = "графика";
        menu[1, 1] = "управление";
        menu[1, 2] = "звук";
        menu[1, 3] = "язык";
        menu[1, 4] = "\nназад";
        #endregion

        #region graphics
        menu[2, 0] = "полный экран";
        menu[2, 1] = "1920 x 1080";
        menu[2, 2] = "1600 x 900";
        menu[2, 3] = "1366 x 768";
        menu[2, 4] = "1280 x 720";
        menu[2, 5] = "800 x 600";
        menu[2, 6] = "\nназад";
        #endregion

        #region controls

        menu[3, 0] = "настройка клавиатуры";
        menu[3, 1] = "настройка геймпада";
        menu[3, 2] = "\nназад";

        #region controls submenu

        menu[31, 0] = "вверх";
        menu[31, 1] = "вниз";
        menu[31, 2] = "влево";
        menu[31, 3] = "вправо";
        menu[31, 4] = "прыжок";
        menu[31, 5] = "удар";
        menu[31, 6] = "рывок";
        menu[31, 7] = "предмет";
        menu[31, 8] = "особ. способность";
        menu[31, 9] = "по умолчанию 1";
        menu[31, 10] = "по умолчанию 2";
        menu[31, 11] = "\nназад";

        menu[32, 0] = "\n\n\n\n\n\n\n\nназад";

        #endregion

        #endregion

        #region sound
        menu[4, 0] = "музыка";
        menu[4, 1] = "\n\n\nэффекты";
        menu[4, 2] = "\n\n\n\n\nназад";
        #endregion

        #region Language

        menu[41, 0]  = "english";
        menu[41, 1]  = "русский";
        menu[41, 2]  = "Español";
        menu[41, 3]  = "中国";
        menu[41, 4]  = "Português";
        menu[41, 5]  = "Português (brasileiro)";
        menu[41, 6]  = "Polska";
        menu[41, 7]  = "Türkçe";
        menu[41, 8]  = "日本語";
        menu[41, 9]  = "Deutsch";
        menu[41, 10] = "Français";
        menu[41, 11] = "Italiano";
        menu[41, 12] = "\nназад";

        #endregion

        #region ПОдтверждения

#region Подтверждения выхода на карту
menu[10,0] = "\n\nда";
menu[10,1] = "\n\nнет";

#endregion

#region Подтверждения выхода в меню
menu[11,0] = "\n\n\nда";
menu[11,1] = "\n\n\nнет";

#endregion

confirm1 = "вы уверены?";

confirm2 = @"вы уверены?
весь несохраненный прогресс будет утерян";
#endregion
        
        #endregion
            break;
        case 2: //spanish
            break;
        case 3: //chinese
         #region CN
            #region mainmenu
            menu[0, 0] = "游戏设置";
            menu[0, 1] = "\n收回";
            menu[0, 2] = "\n到村里";
            menu[0, 3] = "\n退到主菜單";

            #endregion

            #region options
            menu[1, 0] = "图形";
            menu[1, 1] = "控制键";
            menu[1, 2] = "声音";
            menu[1, 3] = "语言设置";
            menu[1, 4] = "\n回去";
            #endregion

            #region graphics
            menu[2, 0] = "全屏";
            menu[2, 1] = "1920 x 1080";
            menu[2, 2] = "1600 x 900";
            menu[2, 3] = "1366 x 768";
            menu[2, 4] = "1280 x 720";
            menu[2, 5] = "800 x 600";
            menu[2, 6] = "\n回去";
            #endregion

            #region controls

            menu[3, 0] = "键盘设置";
            menu[3, 1] = "手柄设置";
            menu[3, 2] = "\n回去";

            #region controls submenu

            menu[31, 0] = "向上";
            menu[31, 1] = "向下";
            menu[31, 2] = "左边";
            menu[31, 3] = "右边";
            menu[31, 4] = "跳";
            menu[31, 5] = "突击";
            menu[31, 6] = "突";
            menu[31, 7] = "项目";
            menu[31, 8] = "专长";
            menu[31, 9] = "缺省 1";
            menu[31, 10] = "缺省 2";
            menu[31, 11] = "\n回去";
            
            menu[32, 0] = "\n\n\n\n\n\n\n回去";

            #endregion

            #endregion

            #region sound
            menu[4, 0] = "音乐";
            menu[4, 1] = "\n\nsfx";
            menu[4, 2] = "\n\n\n\n回去";
            #endregion

            #region Language

            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português";
            menu[41, 5]  = "Português (brasileiro)";
            menu[41, 6]  = "Polska";
            menu[41, 7]  = "Türkçe";
            menu[41, 8]  = "日本語";
            menu[41, 9]  = "Deutsch";
            menu[41, 10] = "Français";
            menu[41, 11] = "Italiano";
            menu[41, 12] = "\n回去";

            #endregion

            #region ПОдтверждения

            #region Подтверждения выхода на карту
            menu[10,0] = "\n\n对";
            menu[10,1] = "\n\n不";

            #endregion

            #region Подтверждения выхода в меню
            menu[11,0] = "\n\n\n对";
            menu[11,1] = "\n\n\n不";

            #endregion

            confirm1 = "你确定吗?";

            confirm2 = @"你确定吗?
所有未保存的进度都将丢失";
            #endregion
            
            #endregion
            break;
        case 4: //portug
            break;
        case 5: //brazil
            break;
        case 6: //polish
            break;
        case 7: //turkey
            break;
        case 8: //japanese
            break;
        case 9: //deutch
            break;
        case 10: //french
            break;
        case 11: // Italian
        #region ENG
            #region mainmenu
            menu[0, 0] = "Impostazioni di gioco";
            menu[0, 1] = "\nResume";
            menu[0, 2] = "\ntorna al villaggio";
            menu[0, 3] = "\nMenu principale";

            #endregion

            #region options
            menu[1, 0] = "Grafica";
            menu[1, 1] = "Tasti";
            menu[1, 2] = "Audio";
            menu[1, 3] = "Impostazioni della lingua";
            menu[1, 4] = "\nTorna";
            #endregion

            #region graphics
            menu[2, 0] = "Schermo intero";
            menu[2, 1] = "1920 x 1080";
            menu[2, 2] = "1600 x 900";
            menu[2, 3] = "1366 x 768";
            menu[2, 4] = "1280 x 720";
            menu[2, 5] = "800 x 600";
            menu[2, 6] = "\nTorna";
            #endregion

            #region controls

            menu[3, 0] = "Impostazioni della tastiera";
            menu[3, 1] = "Impostazioni del gamepad";
            menu[3, 2] = "\nTorna";

            #region controls submenu

            menu[31, 0] = "Sopra";
            menu[31, 1] = "Giù";
            menu[31, 2] = "Sinistra";
            menu[31, 3] = "Destro";
            menu[31, 4] = "Saltare";
            menu[31, 5] = "Assalire";
            menu[31, 6] = "Lanciarsi";
            menu[31, 7] = "Articolo";
            menu[31, 8] = "Abilità speciale";
            menu[31, 9] = "Predefinito 1";
            menu[31, 10] = "Predefinito 2";
            menu[31, 11] = "\nTorna";

            menu[32, 0] = "\n\n\n\n\n\n\nTorna";

            #endregion

            #endregion

            #region sound
            menu[4, 0] = "Musica";
            menu[4, 1] = "\n\nsfx";
            menu[4, 2] = "\n\n\n\nTorna";
            #endregion

            #region Language

            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português";
            menu[41, 5]  = "Português (brasileiro)";
            menu[41, 6]  = "Polska";
            menu[41, 7]  = "Türkçe";
            menu[41, 8]  = "日本語";
            menu[41, 9]  = "Deutsch";
            menu[41, 10] = "Français";
            menu[41, 11] = "Italiano";
            menu[41, 12] = "\nTorna";

            #endregion

            #region ПОдтверждения

            #region Подтверждения выхода на карту
            menu[10,0] = "\n\nSì";
            menu[10,1] = "\n\nNo";

            #endregion

            #region Подтверждения выхода в меню
            menu[11,0] = "\n\n\nSì";
            menu[11,1] = "\n\n\nNo";

            #endregion

            confirm1 = "Sei sicuro?";

            confirm2 = @"Sei sicuro?
Tutti i progressi non salvati andranno persi";
            #endregion
            
            #endregion
            break;
            break;
    }
}   

function fnc_lng_pause_onstage(){
    switch(global.language)
{
    case 0: //English  
    #region ENG
    #region mainmenu
menu[0, 0] = "options";
menu[0, 1] = "\nresume";
menu[0, 2] = "\nexit to main menu";

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

#region sound
menu[4, 0] = "music";
menu[4, 1] = "\n\nsfx";
menu[4, 2] = "\n\n\n\nback";
#endregion

#region Language

menu[41, 0]  = "english";
menu[41, 1]  = "русский";
menu[41, 2]  = "Español";
menu[41, 3]  = "中国";
menu[41, 4]  = "Português";
menu[41, 5]  = "Português (brasileiro)";
menu[41, 6]  = "Polska";
menu[41, 7]  = "Türkçe";
menu[41, 8]  = "日本語";
menu[41, 9]  = "Deutsch";
menu[41, 10] = "Français";
menu[41, 11] = "Italiano";
menu[41, 12] = "\nback";

#endregion

#region ПОдтверждения

#region Подтверждения выхода в меню
menu[10,0] = "\n\n\nyes";
menu[10,1] = "\n\n\nno";

#endregion

confirm2 = @"are you sure?
All unsaved progress will be lost";
#endregion
    #endregion
        break;
    case 1: //russian
    #region RUS
    #region mainmenu
menu[0, 0] = "опции";
menu[0, 1] = "\nвозобновить";
menu[0, 2] = "\nв главное меню";

#endregion

#region options
menu[1, 0] = "графика";
menu[1, 1] = "управление";
menu[1, 2] = "звук";
menu[1, 3] = "язык";
menu[1, 4] = "\nназад";
#endregion

#region graphics
menu[2, 0] = "полный экран";
menu[2, 1] = "1920 x 1080";
menu[2, 2] = "1600 x 900";
menu[2, 3] = "1366 x 768";
menu[2, 4] = "1280 x 720";
menu[2, 5] = "800 x 600";
menu[2, 6] = "\nназад";
#endregion

#region controls

menu[3, 0] = "настройка клавиатуры";
menu[3, 1] = "настройка геймпада";
menu[3, 2] = "\nназад";

#region controls submenu

menu[31, 0] = "вверх";
menu[31, 1] = "вниз";
menu[31, 2] = "влево";
menu[31, 3] = "вправо";
menu[31, 4] = "прыжок";
menu[31, 5] = "удар";
menu[31, 6] = "рывок";
menu[31, 7] = "предмет";
menu[31, 8] = "особ. способность";
menu[31, 9] = "по умолчанию 1";
menu[31, 10] = "по умолчанию 2";
menu[31, 11] = "\nназад";

menu[32, 0] = "\n\n\n\n\n\n\n\nназад";
#endregion

#endregion

#region sound
menu[4, 0] = "музыка";
menu[4, 1] = "\n\n\nэффекты";
menu[4, 2] = "\n\n\n\n\nназад";
#endregion

#region Language

menu[41, 0]  = "english";
menu[41, 1]  = "русский";
menu[41, 2]  = "Español";
menu[41, 3]  = "中国";
menu[41, 4]  = "Português";
menu[41, 5]  = "Português (brasileiro)";
menu[41, 6]  = "Polska";
menu[41, 7]  = "Türkçe";
menu[41, 8]  = "日本語";
menu[41, 9]  = "Deutsch";
menu[41, 10] = "Français";
menu[41, 11] = "Italiano";
menu[41, 12] = "\nназад";

#endregion

#region ПОдтверждения

#region Подтверждения выхода в меню
menu[10,0] = "\n\n\nда";
menu[10,1] = "\n\n\nнет";

#endregion

confirm2 = @"вы уверены?
весь несохраненный прогресс будет утерян";
#endregion
#endregion
        break;
    case 2: //spanish
        break;
    case 3: //chinese 
        #region CN
            #region mainmenu
        menu[0, 0] = "游戏设置";
        menu[0, 1] = "\n收回";
        menu[0, 2] = "\n退到主菜單";

        #endregion

        #region options
        menu[1, 0] = "图形";
        menu[1, 1] = "控制键";
        menu[1, 2] = "声音";
        menu[1, 3] = "语言设置";
        menu[1, 4] = "\n回去";
        #endregion

        #region graphics
        menu[2, 0] = "全屏";
        menu[2, 1] = "1920 x 1080";
        menu[2, 2] = "1600 x 900";
        menu[2, 3] = "1366 x 768";
        menu[2, 4] = "1280 x 720";
        menu[2, 5] = "800 x 600";
        menu[2, 6] = "\n回去";
        #endregion

        #region controls

        menu[3, 0] = "键盘设置";
        menu[3, 1] = "手柄设置";
        menu[3, 2] = "\n回去";

        #region controls submenu

        menu[31, 0] = "向上";
        menu[31, 1] = "向下";
        menu[31, 2] = "左边";
        menu[31, 3] = "右边";
        menu[31, 4] = "跳";
        menu[31, 5] = "突击";
        menu[31, 6] = "突";
        menu[31, 7] = "项目";
        menu[31, 8] = "专长";
        menu[31, 9] = "缺省 1";
        menu[31, 10] = "缺省 2";
        menu[31, 11] = "\n回去";
        
        menu[32, 0] = "\n\n\n\n\n\n\n回去";
        #endregion

        #endregion

        #region sound
        menu[4, 0] = "音乐";
        menu[4, 1] = "\n\nsfx";
        menu[4, 2] = "\n\n\n\n回去";
        #endregion

        #region Language

        menu[41, 0]  = "english";
        menu[41, 1]  = "русский";
        menu[41, 2]  = "Español";
        menu[41, 3]  = "中国";
        menu[41, 4]  = "Português";
        menu[41, 5]  = "Português (brasileiro)";
        menu[41, 6]  = "Polska";
        menu[41, 7]  = "Türkçe";
        menu[41, 8]  = "日本語";
        menu[41, 9]  = "Deutsch";
        menu[41, 10] = "Français";
        menu[41, 11] = "Italiano";
        menu[41, 12] = "\n回去";

        #endregion

        #region ПОдтверждения

        #region Подтверждения выхода в меню
        menu[10,0] = "\n\n\n对";
        menu[10,1] = "\n\n\n不";

        #endregion

        confirm2 = @"你确定吗?
所有未保存的进度都将丢失";
        #endregion
    #endregion
        break;
    case 4: //portug
        break;
    case 5: //brazil
        break;
    case 6: //polish
        break;
    case 7: //turkey
        break;
    case 8: //japanese
        break;
    case 9: //deutch
        break;
    case 10: //french
        break;
    case 11: // Italian
        #region ENG
    #region mainmenu
menu[0, 0] = "Impostazioni di gioco";
menu[0, 1] = "\nresume";
menu[0, 2] = "\nMenu principale";

#endregion

#region options
menu[1, 0] = "Grafica";
menu[1, 1] = "Tasti";
menu[1, 2] = "Audio";
menu[1, 3] = "Impostazioni della lingua";
menu[1, 4] = "\nTorna";
#endregion

#region graphics
menu[2, 0] = "Schermo intero";
menu[2, 1] = "1920 x 1080";
menu[2, 2] = "1600 x 900";
menu[2, 3] = "1366 x 768";
menu[2, 4] = "1280 x 720";
menu[2, 5] = "800 x 600";
menu[2, 6] = "\nTorna";
#endregion

#region controls

menu[3, 0] = "Impostazioni della tastiera";
menu[3, 1] = "Impostazioni del gamepad";
menu[3, 2] = "\nTorna";

#region controls submenu

menu[31, 0] =   "Sopra";
menu[31, 1] =   "Giù";
menu[31, 2] =   "Sinistra";
menu[31, 3] =   "Destro";
menu[31, 4] =   "Saltare";
menu[31, 5] =   "Assalire";
menu[31, 6] =   "Lanciarsi";
menu[31, 7] =   "Articolo";
menu[31, 8] =   "Abilità speciale";
menu[31, 9] =   "Predefinito 1";
menu[31, 10] =  "Predefinito 2";
menu[31, 11] =  "\nTorna";

menu[32, 0] = "\n\n\n\n\n\n\nTorna";
#endregion

#endregion

#region sound
menu[4, 0] = "Musica";
menu[4, 1] = "\n\nsfx";
menu[4, 2] = "\n\n\n\nTorna";
#endregion

#region Language

menu[41, 0]  = "english";
menu[41, 1]  = "русский";
menu[41, 2]  = "Español";
menu[41, 3]  = "中国";
menu[41, 4]  = "Português";
menu[41, 5]  = "Português (brasileiro)";
menu[41, 6]  = "Polska";
menu[41, 7]  = "Türkçe";
menu[41, 8]  = "日本語";
menu[41, 9]  = "Deutsch";
menu[41, 10] = "Français";
menu[41, 11] = "Italiano";
menu[41, 12] = "\nTorna";

#endregion

#region ПОдтверждения

#region Подтверждения выхода в меню
menu[10,0] = "\n\n\nSì";
menu[10,1] = "\n\n\nNo";

#endregion

confirm2 = @"Sei sicuro?
Tutti i progressi non salvati andranno persi";
#endregion
    #endregion
        break;
}  
}
  
function fnc_lng_globalmap(){
    switch(global.language)
    {
        case 0: //English 
            #region eng
            iJungle = "-Jungle island-";
            iDesert = "-Desert island-";
            iSnow = "-Snow island-";
            iLava = "-Lava island-";
            iShadow = "-Shadow island-";
            #endregion
            break;
        case 1: //russian
            #region eng
            iJungle = "-о. Джунглей-";
            iDesert = "-о. Пустынный-";
            iSnow = "-о. Снежный-";
            iLava = "-о. Лавовый-";
            iShadow = "-о. Теневой-";
            #endregion
            break;
        case 2: //spanish
            break;
        case 3: //chinese
            #region cn
            iJungle = "从林岛";
            iDesert = "沙漠荒岛";
            iSnow = "雪岛";
            iLava = "熔岩岛";
            iShadow = "暗影岛";
            #endregion
            break;
        case 4: //portug
            break;
        case 5: //brazil
            break;
        case 6: //polish
            break;
        case 7: //turkey
            break;
        case 8: //japanese
            break;
        case 9: //deutch
            break;
        case 10: //french
            break;
        case 11: // Italian
        #region ITA
            iJungle = "L'isola della giungla";
            iDesert = "L'isola deserta";
            iSnow = "L'isola di neve";
            iLava = "L'isola lavica";
            iShadow = "L'isola delle ombre";
            #endregion
            break;
    }
}
    
function fnc_lng_globalmap_confirm(){
    switch(global.language)
    {
        case 0: //English 
            #region eng
            text1 = "travel to";
            text2 = "jungle island?";

            textyes = "yes";
            textno = "no";
            #endregion
            break;
        case 1: //russian
            #region eng
            text1 = "плыть к";
            text2 = "острову джунглей?";

            textyes = "да";
            textno = "нет";
            #endregion
            break;
        case 2: //spanish
            break;
        case 3: //chinese
            #region eng
            text1 = "你想去从林岛旅游吗?";
            text2 = "";

            textyes = "对";
            textno = "不";
            #endregion
            break;
        case 4: //portug
            break;
        case 5: //brazil
            break;
        case 6: //polish
            break;
        case 7: //turkey
            break;
        case 8: //japanese
            break;
        case 9: //deutch
            break;
        case 10: //french
            break;
        case 11: // Italian
            #region ITAL
            text1 = "Vuoi viaggiare";
            text2 = "nell'isola della giungla?";

            textyes = "Sì";
            textno = "No";
            #endregion
            break;
    }
}    
        
function fnc_lng_jv_cmt_c(){
   switch(global.language)
    {
        case 0: //English  
            #region  ENG text
            eng1 = "start course";
            eng2 = "back"
            #endregion
            break;
        case 1: //russian
            #region  кг text
            eng1 = "начать";
            eng2 = "назад"
            #endregion           
            break;
        case 2: //spanish
            break;
        case 3: //chinese
            #region  CN text
            eng1 = "开始旅程";
            eng2 = "回去"
            #endregion 
            break;
        case 4: //portug
            break;
        case 5: //brazil
            break;
        case 6: //polish
            break;
        case 7: //turkey
            break;
        case 8: //japanese
            break;
        case 9: //deutch
            break;
        case 10: //french
            break;
        case 11: // Italian
            #region  ENG text
            eng1 = "inizio";
            eng2 = "Torna"
            #endregion
            break;
    }    
}        
  
function fnc_lng_jcv_cmt_c(){
   switch(global.language)
    {
        case 0: //English  
            #region  ENG text
            eng1 = "to village";
            eng2 = "back"
            #endregion
            break;
        case 1: //russian
            #region  кг text
            eng1 = "в деревню";
            eng2 = "назад"
            #endregion           
            break;
        case 2: //spanish
            break;
        case 3: //chinese
            #region  CN text
            eng1 = "到村里";
            eng2 = "回去"
            #endregion  
            break;
        case 4: //portug
            break;
        case 5: //brazil
            break;
        case 6: //polish
            break;
        case 7: //turkey
            break;
        case 8: //japanese
            break;
        case 9: //deutch
            break;
        case 10: //french
            break;
        case 11: // Italian
            #region  ENG text
            eng1 = "al villaggio";
            eng2 = "Torna"
            #endregion
            break;
    }    
}      
  
function fnc_lng_jmerch_c(){
   switch(global.language)
    {
        case 0: //English  
            #region  ENG text
            eng1 = "talk";
            eng2 = "trade"
            eng3 = "exit"
            #endregion
            break;
        case 1: //russian
            #region  кг text
            eng1 = "говорить";
            eng2 = "магазин"
            eng3 = "назад"
            #endregion           
            break;
        case 2: //spanish
            break;
        case 3: //chinese
            #region  ENG text
            eng1 = "说出来";
            eng2 = "营业"
            eng3 = "退出"
            #endregion
            break;
        case 4: //portug
            break;
        case 5: //brazil
            break;
        case 6: //polish
            break;
        case 7: //turkey
            break;
        case 8: //japanese
            break;
        case 9: //deutch
            break;
        case 10: //french
            break;
        case 11: // Italian
            #region  ENG text
            eng1 = "parla";
            eng2 = "negozia"
            eng3 = "Exit"
            #endregion
            break;
    }    
}        

function fnc_lng_store(){
    switch(global.language)
    {
        case 1: //Russian 
            #region rus
            store = "магазин";
            
            confirm = "подтвердить?";
            confirmy = "да";
            confirmn = "нет";
            
            nameh_anchor    =  "якорь";
            nameh_grenade   =  "граната";
            nameh_shockball =  "шокшар";
            nameh_parrot    =  "попугай";

            namep_double_strike     = "двойной удар";
            namep_lunge             = "выпад";
            namep_toss_up           = "подброс";
            namep_top_down          = "удар вниз"

            nameb_qhands        = "Проворные руки";
            nameb_dpistol       = "Двойные пистоли";
            nameb_blunderbuss   = "мушкетон";
            nameb_parrotc       = "попугай в клет.";

            name_use = "исп:";
            name_or = "или";
            
            #region mainmenu
                menu[0, 0] = "Человек";
                menu[0, 1] = "Одержимый";
                menu[0, 2] = "Лодка";
                menu[0, 3] = "Зеленые монеты";
                menu[0, 4] = "\n\n\n\n\n\n\n\n\n\n\nвыход"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
                #endregion

            #region human
                menu[1, 0] = ""//"anchor";
                menu[1, 1] = ""//"bomb";
                menu[1, 2] = ""//"electroball";
                menu[1, 3] = ""//"Parrot";
                menu[1, 4] = "\n\n\n\n\n\n\n\n\n\n\nназад";
                #endregion

            #region possessed
                menu[2, 0] = "";//"Double attack";
                menu[2, 1] = "";//"lunge attack";
                menu[2, 2] = "";//"toss attack";
                menu[2, 3] = "";//"down attack";
                menu[2, 4] = "\n\n\n\n\n\n\n\n\n\n\nназад";
                #endregion

            #region boat
                menu[3, 0] = "";//"Rapid fire";
                menu[3, 1] = "";//"Double fire";
                menu[3, 2] = "";//"blunderbuss";
                menu[3, 3] = "";//"Parrot cage";
                menu[3, 4] = "\n\n\n\n\n\n\n\n\n\n\nназад";
                #endregion

            #region Jade coins
                menu[4, 0] = "";//"Rapid fire";
                menu[4, 1] = "";//"Double fire";
                menu[4, 2] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\nназад";//"blunderbuss";
                #endregion

            #region Описания 

                #region Человек



                dHMenu[0,0] = "наносит урон \nпри касании";
                dHMenu[0,1] = "наносит урон \nпри касании\nи отскакивает назад";
                dHMenu[0,2] = "проходит \nсквозь всех врагов \nна своем пути";

                dHMenu[1,0] = "";
                dHMenu[1,1] = "";
                dHMenu[1,2] = "";

                dHMenu[2,0] = "";
                dHMenu[2,1] = "";
                dHMenu[2,2] = "";

                dHMenu[3,0] = "";
                dHMenu[3,1] = "";
                dHMenu[3,2] = "";


                dHMenu[4,0] = "";
                dHMenu[4,1] = "";
                dHMenu[4,2] = "";


                #endregion

                #region Одержимый

                dPMenu[0,0] = "Наносит большой урон, \nотбрасывая врагов \nна которкую дистанцию";
                dPMenu[1,0] = "Удар вперед, \nбросающий врагов \nвдаль"; 
                dPMenu[2,0] = "Подбрасывает врагов \nв воздух \n<только на земле>"; 
                dPMenu[3,0] = "опрокидывает врагов \nвниз \n<только в воздухе>";

                #endregion

                #region Лодка

                dBMenu[0,0] = "";
                dBMenu[0,1] = "";
                dBMenu[0,2] = "";
  
                dBMenu[1,0] = "Стрельба из \nдвух пистолей";
                dBMenu[1,1] = "Усиленная стрельба \nиз двух пистолей";
                dBMenu[1,2] = "Усиленная стрельба \nиз двух пистолей \nс высоким уроном";
 
                dBMenu[2,0] = "";
                dBMenu[2,1] = "";
                dBMenu[2,2] = "";
 
                dBMenu[3,0] = "";
                dBMenu[3,1] = "";
                dBMenu[3,2] = "";
                /*
                dBMenu[4,0] = "Bounces back at solid objects \n2 times";
                dBMenu[4,1] = "Bounces back at solid objects \n4 times";
                dBMenu[4,2] = "Bounces back at solid objects \n6 times";
                */
                #endregion


#endregion
            
            #endregion
            break;
        case 0: //eng
            #region eng
            
            confirm = "confirm?";
            confirmy = "yes";
            confirmn = "no";
            
            store = "store";
            
            nameh_anchor    =  "anchor";
            nameh_grenade   =  "grenade";
            nameh_shockball =  "shockball";
            nameh_parrot    =  "parrot";

            namep_double_strike     = "double strike";
            namep_lunge             = "lunge";
            namep_toss_up           = "toss-up";
            namep_top_down          = "top-down strike"

            nameb_qhands        = "Quick Hands";
            nameb_dpistol       = "Double pistol";
            nameb_blunderbuss   = "blunderbuss";
            nameb_parrotc       = "parrot cage";

            name_use = "use:";
            name_or = "or";
            
            
            #region mainmenu
                menu[0, 0] = "Human";
                menu[0, 1] = "possessed";
                menu[0, 2] = "boat";
                menu[0, 3] = "jade coins";
                menu[0, 4] = "\n\n\n\n\n\n\nEXIT"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
                #endregion

            #region human
                menu[1, 0] = ""//"anchor";
                menu[1, 1] = ""//"bomb";
                menu[1, 2] = ""//"electroball";
                menu[1, 3] = ""//"Parrot";
                menu[1, 4] = "\n\n\n\n\n\n\nBACK";
                #endregion

            #region possessed
                menu[2, 0] = "";//"Double attack";
                menu[2, 1] = "";//"lunge attack";
                menu[2, 2] = "";//"toss attack";
                menu[2, 3] = "";//"down attack";
                menu[2, 4] = "\n\n\n\n\n\n\nBACK";
                #endregion

            #region boat
                menu[3, 0] = "";//"Rapid fire";
                menu[3, 1] = "";//"Double fire";
                menu[3, 2] = "";//"blunderbuss";
                menu[3, 3] = "";//"Parrot cage";
                menu[3, 4] = "\n\n\n\n\n\n\nBACK";
                #endregion

            #region Jade coins
                menu[4, 0] = "";//"Rapid fire";
                menu[4, 1] = "";//"Double fire";
                menu[4, 2] = "\n\n\n\n\n\n\n\n\nBACK";//"blunderbuss";
                #endregion

            #region Описания 

                #region Человек



                dHMenu[0,0] = "Deals damage on hit";
                dHMenu[0,1] = "Deals damage on hit\nand bounces back";
                dHMenu[0,2] = "goes through \nall the enemies \nin its trajectory";

                dHMenu[1,0] = "";
                dHMenu[1,1] = "";
                dHMenu[1,2] = "";

                dHMenu[2,0] = "";
                dHMenu[2,1] = "";
                dHMenu[2,2] = "";

                dHMenu[3,0] = "";
                dHMenu[3,1] = "";
                dHMenu[3,2] = "";


                dHMenu[4,0] = "";
                dHMenu[4,1] = "";
                dHMenu[4,2] = "";


                #endregion

                #region Одержимый

                dPMenu[0,0] = "Deals heavy damage \nby knocking enemies \nback a short distance";
                dPMenu[1,0] = "Strikes forward, \nthrowing the enemy \nfar away"; 
                dPMenu[2,0] = "Throws the enemy \nin the air \n<on the ground only>"; 
                dPMenu[3,0] = "Throws the opponent \ndown \n<in the air only>";

                #endregion

                #region Лодка

                dBMenu[0,0] = "";
                dBMenu[0,1] = "";
                dBMenu[0,2] = "";
  
                dBMenu[1,0] = "two guns \nalternate firing";
                dBMenu[1,1] = "two guns \nsimultaneous firing";
                dBMenu[1,2] = "High damage \ntwo guns \nsimultaneous firing.";
 
                dBMenu[2,0] = "";
                dBMenu[2,1] = "";
                dBMenu[2,2] = "";
 
                dBMenu[3,0] = "";
                dBMenu[3,1] = "";
                dBMenu[3,2] = "";
                /*
                dBMenu[4,0] = "Bounces back at solid objects \n2 times";
                dBMenu[4,1] = "Bounces back at solid objects \n4 times";
                dBMenu[4,2] = "Bounces back at solid objects \n6 times";
                */
                #endregion


            #endregion
            
            #endregion
            break;
        case 2: //spanish
            break;
        case 3: //chinese
            #region CN
            
            confirm = "证实?";
            confirmy = "对";
            confirmn = "不";
            
            store = "买";
            
            nameh_anchor    =  "锚";
            nameh_grenade   =  "手榴弹";
            nameh_shockball =  "震撼球";
            nameh_parrot    =  "鹦鹉";

            namep_double_strike     = "双击";
            namep_lunge             = "蹲下";
            namep_toss_up           = "折腾";
            namep_top_down          = "自上而下的罢工"

            nameb_qhands        = "快手";
            nameb_dpistol       = "双枪";
            nameb_blunderbuss   = "雷筒";
            nameb_parrotc       = "鹦鹉笼";

            name_use = "用:";
            name_or = "/";
            
            
            #region mainmenu
                menu[0, 0] = "人类";
                menu[0, 1] = "着魔的";
                menu[0, 2] = "船";
                menu[0, 3] = "jade coins";
                menu[0, 4] = "\n\n\n\n\n\n\n退出"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
                #endregion

            #region human
                menu[1, 0] = ""//"anchor";
                menu[1, 1] = ""//"bomb";
                menu[1, 2] = ""//"electroball";
                menu[1, 3] = ""//"Parrot";
                menu[1, 4] = "\n\n\n\n\n\n\n回去";
                #endregion

            #region possessed
                menu[2, 0] = "";//"Double attack";
                menu[2, 1] = "";//"lunge attack";
                menu[2, 2] = "";//"toss attack";
                menu[2, 3] = "";//"down attack";
                menu[2, 4] = "\n\n\n\n\n\n\n回去";
                #endregion

            #region boat
                menu[3, 0] = "";//"Rapid fire";
                menu[3, 1] = "";//"Double fire";
                menu[3, 2] = "";//"blunderbuss";
                menu[3, 3] = "";//"Parrot cage";
                menu[3, 4] = "\n\n\n\n\n\n\n回去";
                #endregion

            #region Jade coins
                menu[4, 0] = "";//"Rapid fire";
                menu[4, 1] = "";//"Double fire";
                menu[4, 2] = "\n\n\n\n\n\n\n\n\n回去";//"blunderbuss";
                #endregion

            #region Описания 

                #region Человек



                dHMenu[0,0] = "每击造成伤害";
                dHMenu[0,1] = "每击造成伤害反弹";
                dHMenu[0,2] = "穿过路径上的所有敌人";

                dHMenu[1,0] = "";
                dHMenu[1,1] = "";
                dHMenu[1,2] = "";

                dHMenu[2,0] = "";
                dHMenu[2,1] = "";
                dHMenu[2,2] = "";

                dHMenu[3,0] = "";
                dHMenu[3,1] = "";
                dHMenu[3,2] = "";


                dHMenu[4,0] = "";
                dHMenu[4,1] = "";
                dHMenu[4,2] = "";


                #endregion

                #region Одержимый

                dPMenu[0,0] = "Deals heavy damage \nby knocking enemies \nback a short distance";
                dPMenu[1,0] = "Strikes forward, \nthrowing the enemy \nfar away"; 
                dPMenu[2,0] = "Throws the enemy \nin the air \n<on the ground only>"; 
                dPMenu[3,0] = "Throws the opponent \ndown \n<in the air only>";

                #endregion

                #region Лодка

                dBMenu[0,0] = "";
                dBMenu[0,1] = "";
                dBMenu[0,2] = "";
  
                dBMenu[1,0] = "两支手枪交替射击";
                dBMenu[1,1] = "两支手枪同时射击";
                dBMenu[1,2] = "高伤害和枪同时射击";
 
                dBMenu[2,0] = "";
                dBMenu[2,1] = "";
                dBMenu[2,2] = "";
 
                dBMenu[3,0] = "";
                dBMenu[3,1] = "";
                dBMenu[3,2] = "";
                /*
                dBMenu[4,0] = "Bounces back at solid objects \n2 times";
                dBMenu[4,1] = "Bounces back at solid objects \n4 times";
                dBMenu[4,2] = "Bounces back at solid objects \n6 times";
                */
                #endregion


            #endregion
            
            #endregion
            break;
        case 4: //portug
            break;
        case 5: //brazil
            break;
        case 6: //polish
            break;
        case 7: //turkey
            break;
        case 8: //japanese
            break;
        case 9: //deutch
            break;
        case 10: //french
            break;
        case 11: // Italian
            #region eng
            
            confirm = "Conferma?";
            confirmy = "Sì";
            confirmn = "No";
            
            store = "store";
            
            nameh_anchor    =  "Ancora";
            nameh_grenade   =  "granata";
            nameh_shockball =  "shockball";
            nameh_parrot    =  "pappagallo";

            namep_double_strike     = "double strike";
            namep_lunge             = "lunge";
            namep_toss_up           = "toss-up";
            namep_top_down          = "top-down strike"

            nameb_qhands        = "mani veloci";
            nameb_dpistol       = "doppia canna";
            nameb_blunderbuss   = "fulmine";
            nameb_parrotc       = "pappagallo";

            name_use = "usa:";
            name_or = "/";
            
            
            #region mainmenu
                menu[0, 0] = "umano";
                menu[0, 1] = "posseduto";
                menu[0, 2] = "la nave";
                menu[0, 3] = "jade coins";
                menu[0, 4] = "\n\n\n\n\n\n\nEXIT"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
                #endregion

            #region human
                menu[1, 0] = ""//"anchor";
                menu[1, 1] = ""//"bomb";
                menu[1, 2] = ""//"electroball";
                menu[1, 3] = ""//"Parrot";
                menu[1, 4] = "\n\n\n\n\n\n\nTorna";
                #endregion

            #region possessed
                menu[2, 0] = "";//"Double attack";
                menu[2, 1] = "";//"lunge attack";
                menu[2, 2] = "";//"toss attack";
                menu[2, 3] = "";//"down attack";
                menu[2, 4] = "\n\n\n\n\n\n\nTorna";
                #endregion

            #region boat
                menu[3, 0] = "";//"Rapid fire";
                menu[3, 1] = "";//"Double fire";
                menu[3, 2] = "";//"blunderbuss";
                menu[3, 3] = "";//"Parrot cage";
                menu[3, 4] = "\n\n\n\n\n\n\nTorna";
                #endregion

            #region Jade coins
                menu[4, 0] = "";//"Rapid fire";
                menu[4, 1] = "";//"Double fire";
                menu[4, 2] = "\n\n\n\n\n\n\n\n\nTorna";//"blunderbuss";
                #endregion

            #region Описания 

                #region Человек



                dHMenu[0,0] = "infligge danni \nper colpo";
                dHMenu[0,1] = "infligge danni \nper colpo\ne rimbalza indietro";
                dHMenu[0,2] = "attraversa tutti \ni nemici\nsulla sua traiettoria";

                dHMenu[1,0] = "";
                dHMenu[1,1] = "";
                dHMenu[1,2] = "";

                dHMenu[2,0] = "";
                dHMenu[2,1] = "";
                dHMenu[2,2] = "";

                dHMenu[3,0] = "";
                dHMenu[3,1] = "";
                dHMenu[3,2] = "";


                dHMenu[4,0] = "";
                dHMenu[4,1] = "";
                dHMenu[4,2] = "";


                #endregion

                #region Одержимый

                dPMenu[0,0] = "Deals heavy damage \nby knocking enemies \nback a short distance";
                dPMenu[1,0] = "Strikes forward, \nthrowing the enemy \nfar away"; 
                dPMenu[2,0] = "Throws the enemy \nin the air \n<on the ground only>"; 
                dPMenu[3,0] = "Throws the opponent \ndown \n<in the air only>";

                #endregion

                #region Лодка

                dBMenu[0,0] = "";
                dBMenu[0,1] = "";
                dBMenu[0,2] = "";
  
                dBMenu[1,0] = "alternato sparare \ndi due pistole";
                dBMenu[1,1] = "simultaneo sparare \ndi due pistole";
                dBMenu[1,2] = "alto danno \ne simultaneo sparare \ndi due pistole";
 
                dBMenu[2,0] = "";
                dBMenu[2,1] = "";
                dBMenu[2,2] = "";
 
                dBMenu[3,0] = "";
                dBMenu[3,1] = "";
                dBMenu[3,2] = "";
                /*
                dBMenu[4,0] = "Bounces back at solid objects \n2 times";
                dBMenu[4,1] = "Bounces back at solid objects \n4 times";
                dBMenu[4,2] = "Bounces back at solid objects \n6 times";
                */
                #endregion


            #endregion
            
            #endregion
            break;
    }
}

function fnc_lng_level_confirm1(){
   switch(global.language)
    {
        case 0: //English  
            #region  ENG text
            title = "choose your gear";                       
            
            nameh_anchor    =  "anchor";
            nameh_grenade   =  "grenade";
            nameh_shockball =  "shockball";
            nameh_parrot    =  "parrot";
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\nCONFIRM"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\nBACK"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\nBACK";
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\nBACK";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\nBACK";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\nBACK";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "Deals damage on hit";
            dHMenu[0,1] = "Deals damage on hit\nand bounces back";
            dHMenu[0,2] = "goes through \nall the enemies \nin its path";

            dHMenu[1,0] = ""
            dHMenu[1,1] = ""
            dHMenu[1,2] = ""
                           
            dHMenu[2,0] = ""
            dHMenu[2,1] = ""
            dHMenu[2,2] = ""
                           
            dHMenu[3,0] = ""
            dHMenu[3,1] = ""
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */

                        #endregion
                        #endregion
            #endregion
            break;
        case 1: //russian
        #region RUS
             title = "выберите снаряжение";                       
            
            nameh_anchor    =  "якорь";
            nameh_grenade   =  "граната";
            nameh_shockball =  "шокшар";
            nameh_parrot    =  "попугай";
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\n\n\n\n\nподтвердить"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\n\n\n\n\nназад"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\nBACK";
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\nBACK";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\nBACK";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\nBACK";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "наносит урон \nпри касании";
            dHMenu[0,1] = "наносит урон \nпри касании\nи отскакивает назад";
            dHMenu[0,2] = "проходит \nсквозь всех врагов \nна своем пути";

            dHMenu[1,0] = "";
            dHMenu[1,1] = "";
            dHMenu[1,2] = "";
                           
            dHMenu[2,0] = ""
            dHMenu[2,1] = "";
            dHMenu[2,2] = "";
                           
            dHMenu[3,0] = ""
            dHMenu[3,1] = "";
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */

                        #endregion
                        #endregion
          #endregion
            break;
        case 2: //spanish
            break;
        case 3: //chinese
         #region  ENG text
            title = "选择你的装备";                       
            
            nameh_anchor    =  "锚";
            nameh_grenade   =  "手榴弹";
            nameh_shockball =  "震撼球";
            nameh_parrot    =  "鹦鹉";
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\n证实"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\n回去"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\n回去";
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\n回去";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\n回去";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\n回去";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "每击造成伤害";
            dHMenu[0,1] = "每击造成伤害反弹";
            dHMenu[0,2] = "穿过路径上的所有敌人";

            dHMenu[1,0] = ""
            dHMenu[1,1] = ""
            dHMenu[1,2] = ""
                           
            dHMenu[2,0] = ""
            dHMenu[2,1] = ""
            dHMenu[2,2] = ""
                           
            dHMenu[3,0] = ""
            dHMenu[3,1] = ""
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */

                        #endregion
                        #endregion
            #endregion
            break;
        case 4: //portug
            break;
        case 5: //brazil
            break;
        case 6: //polish
            break;
        case 7: //turkey
            break;
        case 8: //japanese
            break;
        case 9: //deutch
            break;
        case 10: //french
            break;
        case 11: // Italian
            #region  ENG text
            title = "Scegli la tua attrezzatura";                       
            
            nameh_anchor    =  "Ancora";
            nameh_grenade   =  "granata";
            nameh_shockball =  "shockball";
            nameh_parrot    =  "pappagallo";
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\nConferma"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\nBACK"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\nTorna";
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\nTorna";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\nTorna";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\nTorna";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "infligge danni \nper colpo";
            dHMenu[0,1] = "infligge danni \nper colpo\ne rimbalza indietro";
            dHMenu[0,2] = "attraversa tutti \ni nemici\nsulla sua traiettoria";

            dHMenu[1,0] = ""
            dHMenu[1,1] = ""
            dHMenu[1,2] = ""
                           
            dHMenu[2,0] = ""
            dHMenu[2,1] = ""
            dHMenu[2,2] = ""
                           
            dHMenu[3,0] = ""
            dHMenu[3,1] = ""
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */

                        #endregion
                        #endregion
            #endregion
            break;
    }    
}      

function fnc_lng_level_confirm2(){
   switch(global.language)
    {
        case 0: //English  
            #region  ENG text
            title = "choose your gear";                       
            title2 = "choose boat gear";            
            nameh_anchor    =  "anchor";
            nameh_grenade   =  "grenade";
            nameh_shockball =  "shockball";
            nameh_parrot    =  "parrot";

            namep_double_strike     = "double strike";
            namep_lunge             = "lunge";
            namep_toss_up           = "toss-up";
            namep_top_down          = "top-down strike"

            nameb_qhands        = "Quick Hands";
            nameb_dpistol       = "Double pistol";
            nameb_blunderbuss   = "blunderbuss";
            nameb_parrotc       = "parrot cage";
            
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\nCONFIRM"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\nBACK"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\nCONFIRM"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[1, 5] = "\n\n\n\n\n\n\nBACK"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\nBACK";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\nBACK";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\nBACK";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "Deals damage on hit";
            dHMenu[0,1] = "Deals damage on hit\nand bounces back";
            dHMenu[0,2] = "goes through \nall the enemies \nin its path";

            dHMenu[1,0] = ""
            dHMenu[1,1] = ""
            dHMenu[1,2] = ""
                          
            dHMenu[2,0] = ""
            dHMenu[2,1] = ""
            dHMenu[2,2] = ""
                          
            dHMenu[3,0] = ""
            dHMenu[3,1] = ""
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */
            
 
                        #endregion
            
            #region Лодка
                dBMenu[0,0] = "";
                dBMenu[0,1] = "";
                dBMenu[0,2] = "";
  
                dBMenu[1,0] = "Alternate firing of \ntwo guns";
                dBMenu[1,1] = "Simultaneous firing \nof two guns";
                dBMenu[1,2] = "Simultaneous firing \nof two guns \nwith high damage";
 
                dBMenu[2,0] = "";
                dBMenu[2,1] = "";
                dBMenu[2,2] = "";
 
                dBMenu[3,0] = "";
                dBMenu[3,1] = "";
                dBMenu[3,2] = "";
            #endregion
            
            #endregion
            #endregion
            break;
        case 1: //russian
        #region Rus
            title = "выберите снаряжеие";                       
            title2 = "снаряжение для лодки";
            nameh_anchor    =  "якорь";
            nameh_grenade   =  "граната";
            nameh_shockball =  "шокшар";
            nameh_parrot    =  "попугай";

            namep_double_strike     = "двойной удар";
            namep_lunge             = "выпад";
            namep_toss_up           = "подброс";
            namep_top_down          = "удар вниз"

            nameb_qhands        = "Проворные руки";
            nameb_dpistol       = "Двойные пистоли";
            nameb_blunderbuss   = "мушкетон";
            nameb_parrotc       = "попугай в клет.";
            
            
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\n\n\n\n\nподтвердить"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\n\n\n\n\nназад"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\n\n\n\n\nподтвердить"; 
            menu[1, 5] = "\n\n\n\n\n\n\n\n\n\n\nназад"; 
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\nBACK";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\nназад";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\nBACK";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "наносит урон \nпри касании";
            dHMenu[0,1] = "наносит урон \nпри касании\nи отскакивает назад";
            dHMenu[0,2] = "проходит \nсквозь всех врагов \nна своем пути";

            dHMenu[1,0] = ""
            dHMenu[1,1] = ""
            dHMenu[1,2] = ""
                           
            dHMenu[2,0] = ""
            dHMenu[2,1] = ""
            dHMenu[2,2] = ""
                           
            dHMenu[3,0] = ""
            dHMenu[3,1] = ""
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */

                        #endregion
            
            #region Лодка
            
            dBMenu[0,0] = "";
            dBMenu[0,1] = "";
            dBMenu[0,2] = "";
            
            dBMenu[1,0] = "Стрельба из \nдвух пистолей";
            dBMenu[1,1] = "Усиленная стрельба \nиз двух пистолей";
            dBMenu[1,2] = "Усиленная стрельба \nиз двух пистолей \nс высоким уроном";                     
 
            dBMenu[2,0] = "";
            dBMenu[2,1] = "";
            dBMenu[2,2] = "";
 
            dBMenu[3,0] = "";
            dBMenu[3,1] = "";
            dBMenu[3,2] = "";
            #endregion
            
            #endregion
          
            #endregion
            break;
        case 2: //spanish
            break;
        case 3: //chinese
        #region  ENG text
            title = "选择你的装备";                       
            title2 = "选择船装备";            
            nameh_anchor    =  "锚";
            nameh_grenade   =  "手榴弹";
            nameh_shockball =  "震撼球";
            nameh_parrot    =  "鹦鹉";

            namep_double_strike     = "double strike";
            namep_lunge             = "lunge";
            namep_toss_up           = "toss-up";
            namep_top_down          = "top-down strike"

            nameb_qhands        = "快手";
            nameb_dpistol       = "双枪";
            nameb_blunderbuss   = "雷筒";
            nameb_parrotc       = "鹦鹉笼";
            
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\n证实"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\n回去"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\n证实"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[1, 5] = "\n\n\n\n\n\n\n回去"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\n回去";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\n回去";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\n回去K";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "每击造成伤害";
            dHMenu[0,1] = "每击造成伤害反弹";
            dHMenu[0,2] = "穿过路径上的所有敌人";

            dHMenu[1,0] = ""
            dHMenu[1,1] = ""
            dHMenu[1,2] = ""
                          
            dHMenu[2,0] = ""
            dHMenu[2,1] = ""
            dHMenu[2,2] = ""
                          
            dHMenu[3,0] = ""
            dHMenu[3,1] = ""
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */
            
 
                        #endregion
            
            #region Лодка
                dBMenu[0,0] = "";
                dBMenu[0,1] = "";
                dBMenu[0,2] = "";
  
                dBMenu[1,0] = "两支手枪交替射击";
                dBMenu[1,1] = "两支手枪同时射击";
                dBMenu[1,2] = "高伤害和枪同时射击";
 
                dBMenu[2,0] = "";
                dBMenu[2,1] = "";
                dBMenu[2,2] = "";
 
                dBMenu[3,0] = "";
                dBMenu[3,1] = "";
                dBMenu[3,2] = "";
            #endregion
            
            #endregion
            #endregion        
            break;
        case 4: //portug
            break;
        case 5: //brazil
            break;
        case 6: //polish
            break;
        case 7: //turkey
            break;
        case 8: //japanese
            break;
        case 9: //deutch
            break;
        case 10: //french
            break;
        case 11: // Italian
            #region  ENG text
            title = "Scegli la tua attrezzatura";                       
            title2 = "Scegli l'attrezzatura da barca";            
            nameh_anchor    =  "Ancora";
            nameh_grenade   =  "granata";
            nameh_shockball =  "shockball";
            nameh_parrot    =  "pappagallo ";

            namep_double_strike     = "double strike";
            namep_lunge             = "lunge";
            namep_toss_up           = "toss-up";
            namep_top_down          = "top-down strike"

            nameb_qhands        = "mani veloci";
            nameb_dpistol       = "doppia canna";
            nameb_blunderbuss   = "fulmine";
            nameb_parrotc       = "pappagallo ";
            
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\nConferma"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\nTorna"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\nConferma"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[1, 5] = "\n\n\n\n\n\n\nTorna"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\nTorna";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\nTorna";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\nTorna";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "infligge danni \nper colpo";
            dHMenu[0,1] = "infligge danni \nper colpo\ne rimbalza indietro";
            dHMenu[0,2] = "attraversa tutti \ni nemici\nsulla sua traiettoria";

            dHMenu[1,0] = ""
            dHMenu[1,1] = ""
            dHMenu[1,2] = ""
                          
            dHMenu[2,0] = ""
            dHMenu[2,1] = ""
            dHMenu[2,2] = ""
                          
            dHMenu[3,0] = ""
            dHMenu[3,1] = ""
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */
            
 
                        #endregion
            
            #region Лодка
                dBMenu[0,0] = "";
                dBMenu[0,1] = "";
                dBMenu[0,2] = "";
  
                dBMenu[1,0] = "alternato sparare \ndi due pistole";
                dBMenu[1,1] = "simultaneo sparare \ndi due pistole";
                dBMenu[1,2] = "alto danno \ne simultaneo sparare \ndi due pistole";
 
                dBMenu[2,0] = "";
                dBMenu[2,1] = "";
                dBMenu[2,2] = "";
 
                dBMenu[3,0] = "";
                dBMenu[3,1] = "";
                dBMenu[3,2] = "";
            #endregion
            
            #endregion
            #endregion
            break;
    }    
}      
    
function fnc_lng_level_endurance_confirm(){
    switch(global.language)
    {
        case 0: //English  
        #region  ENG text
            title = "choose your gear";                       
            
            nameh_anchor    =  "anchor";
            nameh_grenade   =  "grenade";
            nameh_shockball =  "shockball";
            nameh_parrot    =  "parrot";
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\nCONFIRM"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\nBACK"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\nBACK";
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\nBACK";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\nBACK";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\nBACK";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "Deals damage on hit";
            dHMenu[0,1] = "Deals damage on hit\nand bounces back";
            dHMenu[0,2] = "goes through \nall the enemies \nin its path";

            dHMenu[1,0] = ""
            dHMenu[1,1] = ""
            dHMenu[1,2] = ""
                           
            dHMenu[2,0] = ""
            dHMenu[2,1] = ""
            dHMenu[2,2] = ""
                           
            dHMenu[3,0] = ""
            dHMenu[3,1] = ""
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */

                        #endregion
                        #endregion
            #endregion
            break;
        case 1: //russian
        #region RUS
             title = "выберите снаряжение";                       
            
            nameh_anchor    =  "якорь";
            nameh_grenade   =  "граната";
            nameh_shockball =  "шокшар";
            nameh_parrot    =  "попугай";
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\n\n\n\n\nподтвердить"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\n\n\n\n\nназад"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\nBACK";
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\nBACK";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\nBACK";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\nBACK";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "наносит урон \nпри касании";
            dHMenu[0,1] = "наносит урон \nпри касании\nи отскакивает назад";
            dHMenu[0,2] = "проходит \nсквозь всех врагов \nна своем пути";

            dHMenu[1,0] = "";
            dHMenu[1,1] = "";
            dHMenu[1,2] = "";
                           
            dHMenu[2,0] = ""
            dHMenu[2,1] = "";
            dHMenu[2,2] = "";
                           
            dHMenu[3,0] = ""
            dHMenu[3,1] = "";
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */

                        #endregion
                        #endregion
          #endregion
            break;
        case 2: //spanish
            break;
        case 3: //chinese
         #region  ENG text
            title = "选择你的装备";                       
            
            nameh_anchor    =  "锚";
            nameh_grenade   =  "手榴弹";
            nameh_shockball =  "震撼球";
            nameh_parrot    =  "鹦鹉";
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\n证实"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\n回去"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\n回去";
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\n回去";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\n回去";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\n回去";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "每击造成伤害";
            dHMenu[0,1] = "每击造成伤害反弹";
            dHMenu[0,2] = "穿过路径上的所有敌人";

            dHMenu[1,0] = ""
            dHMenu[1,1] = ""
            dHMenu[1,2] = ""
                           
            dHMenu[2,0] = ""
            dHMenu[2,1] = ""
            dHMenu[2,2] = ""
                           
            dHMenu[3,0] = ""
            dHMenu[3,1] = ""
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */

                        #endregion
                        #endregion
            #endregion
            break;
        case 4: //portug
            break;
        case 5: //brazil
            break;
        case 6: //polish
            break;
        case 7: //turkey
            break;
        case 8: //japanese
            break;
        case 9: //deutch
            break;
        case 10: //french
            break;
        case 11: // Italian
            #region Ital
            title = "Scegli la tua attrezzatura";                       
            
            nameh_anchor    =  "Ancora";
            nameh_grenade   =  "granata";
            nameh_shockball =  "shockball";
            nameh_parrot    =  "pappagallo";
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\nConferma"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\nBACK"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\nTorna";
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\nTorna";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\nTorna";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\nTorna";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "infligge danni \nper colpo";
            dHMenu[0,1] = "infligge danni \nper colpo\ne rimbalza indietro";
            dHMenu[0,2] = "attraversa tutti \ni nemici\nsulla sua traiettoria";

            dHMenu[1,0] = ""
            dHMenu[1,1] = ""
            dHMenu[1,2] = ""
                           
            dHMenu[2,0] = ""
            dHMenu[2,1] = ""
            dHMenu[2,2] = ""
                           
            dHMenu[3,0] = ""
            dHMenu[3,1] = ""
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */

                        #endregion
                        #endregion
            #endregion
            break;
    } 
}
    
function fnc_lng_jmap()
{
   switch(global.language)
    {
        case 0: //English  
            #region  ENG text
            village     = "Village"
            endurance   = "endurance test"
            lvl1        = "1st level"
            lvl2        = "2nd level"
            temple      = "Jungle Temple"
            lair        = "Temple Lair"
            #endregion
            break;
        case 1: //russian
            #region  кг text
            village     = "деревня"
            endurance   = "арена"
            lvl1        = "1й уровень"
            lvl2        = "2й уровень"
            temple      = "Храм"
            lair        = "Логово"
            #endregion           
            break;
        case 2: //spanish
            break;
        case 3: //chinese
            #region  ENG text
            village     = "从林村"
            endurance   = "忍耐力测试"
            lvl1        = "第1级"
            lvl2        = "第2级"
            temple      = "从林神庙"
            lair        = "寺庙巢穴"
            #endregion
            break;
        case 4: //portug
            break;
        case 5: //brazil
            break;
        case 6: //polish
            break;
        case 7: //turkey
            break;
        case 8: //japanese
            break;
        case 9: //deutch
            break;
        case 10: //french
            break;
        case 11: //Italian
            #region  ENG text
            village     = "il villaggio di"
            endurance   = "arena"
            lvl1        = "Livello 1"
            lvl2        = "Livello 2"
            temple      = "Il tempio"
            lair        = "Il Covo"
            #endregion
            break;
    }    
}      

function fnc_lng_boat_choose(){

    switch(global.language)
    {
        case 0: //English   
            text_l = "More Enemies";
            text_l_g = "West Coast";
            text_r_g = "East Coast";
            text_r = "More platforming";

            break;
        case 1: //russian
            text_l =    "больше врагов";
            text_l_g =  "западный берег";
            text_r_g =  "восточный берег";
            text_r =    "больше платформинга";
            break;
        case 2: //spanish
            break;
        case 3: //chinese
            text_l = "更多敌人";
            text_l_g = "西海岸";
            text_r_g = "东海岸";
            text_r = "更多平台化";
            break;
        case 4: //portug
            break;
        case 5: //brazil
            break;
        case 6: //polish
            break;
        case 7: //turkey
            break;
        case 8: //japanese
            break;
        case 9: //deutch
            break;
        case 10: //french
            break;
        case 11: // Italian
            text_l = "Più nemici";
            text_l_g = "Costa occidentale ";
            text_r_g = "Costa orientale";
            text_r = "Più piattaforma";

            break;
    }
    
}
    
function fnc_lng_cannon_choose(){
    switch(global.language)
    {
        case 0: //English   
            text_l = "More Enemies";
            text_l_g = "jump to\nWest Coast";
            text_r_g = "jump to\nEast Coast";
            text_r = "More platforming";
            text_b = "back";

            break;
        case 1: //russian
            text_l =    "больше врагов";
            text_l_g =  "прыгнуть на\nзападный берег";
            text_r_g =  "прыгнуть на\nвосточный берег";
            text_r =    "больше платформинга";
            text_b =    "назад";
            break;
        case 2: //spanish
            break;
        case 3: //chinese
            text_l = "更多敌人";
            text_l_g = "跳上西海岸";
            text_r_g = "跳上东海岸";
            text_r = "更多平台化";
            text_b = "回去";
            break;
        case 4: //portug
            break;
        case 5: //brazil
            break;
        case 6: //polish
            break;
        case 7: //turkey
            break;
        case 8: //japanese
            break;
        case 9: //deutch
            break;
        case 10: //french
            break;
        case 11: // Italian
            text_l = "Più nemici";
            text_l_g = "Salta sulla\ncosta occidentalest";
            text_r_g = "Salta sulla\ncosta orientale ";
            text_r = "Più piattaforma";
            text_b = "Torna";
            break;
    }
}
    
