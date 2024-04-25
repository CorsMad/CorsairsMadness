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
            menu[31, 9] = "weapon select";
            menu[31, 10] = "default 1";
            menu[31, 11] = "default 2";
            menu[31, 12] = "back";

            menu[32, 0] = "back";


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
            menu[41, 4]  = "Português (PT)";
            menu[41, 5]  = "Português (BR)";
            menu[41, 6]  = "Polski";            
            menu[41, 7]  = "日本語";
            menu[41, 8]  = "Deutsch";
            menu[41, 9]  = "Français";
            menu[41, 10] = "Italiano";
            menu[41, 11] = "\nback";

            #endregion
            
        #endregion
        break;
    case 1: //russian
        #region
            #region Разное

            confirm_eng = @"ХОТИТЕ НАЧАТЬ НОВУЮ ИГРУ?
ВЕСЬ ПРОГРЕСС БУДЕТ УДАЛеН";

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
            menu[31, 9] = "СМЕНА ОРУЖИЯ";
            menu[31, 10] = "ПО УМОЛЧАНИЮ 1";
            menu[31, 11] = "ПО УМОЛЧАНИЮ 2";
            menu[31, 12] = "\nНАЗАД";

            menu[32, 0] = "НАЗАД";


            #endregion

            #endregion

            #region sound
            menu[4, 0] = "МуЗыКА";
            menu[4, 1] = "\n\n\nЭФФЕКТЫ";
            menu[4, 2] = "\n\n\n\n\n\nНАЗАД";
            #endregion

            #region Confirm

            menu[5, 0] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nДА";
            menu[5, 1] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nНЕТ";

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
            menu[41, 4]  = "Português (PT)";
            menu[41, 5]  = "Português (BR)";
            menu[41, 6]  = "Polski";          
            menu[41, 7]  = "日本語";
            menu[41, 8]  = "Deutsch";
            menu[41, 9] = "Français";
            menu[41, 10] = "Italiano";
            menu[41, 11] = "\nназад";
            

            #endregion
            
        #endregion
        break;
    case 2: //spanish
     #region
            #region Разное

            confirm_eng = @"¿quieres empezar una nueva partida?
todo el progreso anterior se perderá";

            #endregion

            #region mainmenu

            menu[0, 0] = "continuar";
            menu[0, 1] = "partida nueva";
            menu[0, 2] = "opciones";
            menu[0, 3] = "créditos";
            menu[0, 4] = "salir";   

            #endregion

            #region options
            menu[1, 0] = "gráficos";
            menu[1, 1] = "controles";
            menu[1, 2] = "sonido";
            menu[1, 3] = "configuración de idioma";
            menu[1, 4] = "\natrás";
            #endregion

            #region graphics
            menu[2, 0] = "pantalla completa";
            menu[2, 1] = "1920 x 1080";
            menu[2, 2] = "1600 x 900";
            menu[2, 3] = "1366 x 768";
            menu[2, 4] = "1280 x 720";
            menu[2, 5] = "800 x 600";
            menu[2, 6] = "\natrás";
            #endregion

            #region controls

            menu[3, 0] = "configuración del teclado";
            menu[3, 1] = "configuración del gamepad";
            menu[3, 2] = "\natrás";

            #region controls submenu

            menu[31, 0] = "arriba";
            menu[31, 1] = "abajo";
            menu[31, 2] = "izquierda";
            menu[31, 3] = "derecha";
            menu[31, 4] = "saltar";
            menu[31, 5] = "ataque";
            menu[31, 6] = "dash";
            menu[31, 7] = "objeto";
            menu[31, 8] = "habilidad espec.";
            menu[31, 9] = "Selección de arma";
            menu[31, 10] = "por defecto 1";
            menu[31, 11] = "por defecto 2";
            menu[31, 12] = "\natrás";

            menu[32, 0] = "atrás";


            #endregion

            #endregion

            #region sound
            menu[4, 0] = "música";
            menu[4, 1] = "\n\nsfx";
            menu[4, 2] = "\n\n\n\natrás";
            #endregion

            #region Confirm

            menu[5, 0] = "\n\n\n\n\n\n\n\n\n\n\n\nsí";
            menu[5, 1] = "\n\n\n\n\n\n\n\n\n\n\n\nno";

            #endregion

            #region Credits

            menu[6,0] = "\n\n\n\n\n\n\n\n\n\natrás";
            musiccred = "música"
            #endregion
            
            #region Language
            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português (PT)";
            menu[41, 5]  = "Português (BR)";
            menu[41, 6]  = "Polski";            
            menu[41, 7]  = "日本語";
            menu[41, 8]  = "Deutsch";
            menu[41, 9] = "Français";
            menu[41, 10] = "Italiano";
            menu[41, 11] = "\natrás";

            #endregion
            
        #endregion
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
            menu[31, 9] = "择武器";
            menu[31, 10] = "缺省 1";
            menu[31, 11] = "缺省 2";
            menu[31, 12] = "\n回去";

            menu[32, 0] = "回去";


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
            musiccred = "音乐"
            #endregion
            
            #region Language
            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português (PT)";
            menu[41, 5]  = "Português (BR)";
            menu[41, 6]  = "Polski";            
            menu[41, 7]  = "日本語";
            menu[41, 8]  = "Deutsch";
            menu[41, 9]  = "Français";
            menu[41, 10] = "Italiano";
            menu[41, 11] = "\n回去";            

            #endregion
        #endregion    
        break;
    case 4: //portug
    #region
             #region Разное

            confirm_eng = @"Queres começar um novo jogo?
todos os progressos anteriores serão perdidos";

            #endregion

            #region mainmenu

            menu[0, 0] = "continuar";
            menu[0, 1] = "novo jogo";
            menu[0, 2] = "opções";
            menu[0, 3] = "créditos";
            menu[0, 4] = "sair";   

            #endregion

            #region options
            menu[1, 0] = "gráficos";
            menu[1, 1] = "controlos";
            menu[1, 2] = "som";
            menu[1, 3] = "definições de idioma";
            menu[1, 4] = "\nvoltar";
            #endregion

            #region graphics
            menu[2, 0] = "ecrã completo";
            menu[2, 1] = "1920 x 1080";
            menu[2, 2] = "1600 x 900";
            menu[2, 3] = "1366 x 768";
            menu[2, 4] = "1280 x 720";
            menu[2, 5] = "800 x 600";
            menu[2, 6] = "\nvoltar";
            #endregion

            #region controls

            menu[3, 0] = "definições do teclado";
            menu[3, 1] = "definições do gamepad";
            menu[3, 2] = "\nvoltar";

            #region controls submenu

            menu[31, 0] = "pra cima";
            menu[31, 1] = "para baixo";
            menu[31, 2] = "para à esquerda";
            menu[31, 3] = "para à direita";
            menu[31, 4] = "saltar";
            menu[31, 5] = "atacar";
            menu[31, 6] = "dash";
            menu[31, 7] = "item";
            menu[31, 8] = "habilidade esp.";
            menu[31, 9] = "Seleção de arma";
            menu[31, 10] = "padrão 1";
            menu[31, 11] = "padrão 2";
            menu[31, 12] = "\nvolta";

            menu[32, 0] = "volta";


            #endregion

            #endregion

            #region sound
            menu[4, 0] = "música";
            menu[4, 1] = "\n\nefeitos especiais";
            menu[4, 2] = "\n\n\n\nvolta";
            #endregion

            #region Confirm

            menu[5, 0] = "\n\n\n\n\n\n\n\n\n\n\n\nsim";
            menu[5, 1] = "\n\n\n\n\n\n\n\n\n\n\n\nnão";

            #endregion

            #region Credits

            menu[6,0] = "\n\n\n\n\n\n\n\n\n\nvolta";
            musiccred = "música"
            #endregion
            
            #region Language
            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português (PT)";
            menu[41, 5]  = "Português (BR)";
            menu[41, 6]  = "Polski";            
            menu[41, 7]  = "日本語";
            menu[41, 8]  = "Deutsch";
            menu[41, 9]  = "Français";
            menu[41, 10] = "Italiano";
            menu[41, 11] = "\nvoltar";

            #endregion
            
        #endregion
        break;
    case 5: //brazil
    #region
             #region Разное

            confirm_eng = @"Deseja começar um novo jogo?
todo o progresso anterior será perdido";

            #endregion

            #region mainmenu

            menu[0, 0] = "continuar";
            menu[0, 1] = "novo jogo";
            menu[0, 2] = "opções";
            menu[0, 3] = "créditos";
            menu[0, 4] = "sair";   

            #endregion

            #region options
            menu[1, 0] = "gráficos";
            menu[1, 1] = "controles";
            menu[1, 2] = "sons";
            menu[1, 3] = "configurações de idioma";
            menu[1, 4] = "\nvoltar";
            #endregion

            #region graphics
            menu[2, 0] = "tela cheia";
            menu[2, 1] = "1920 x 1080";
            menu[2, 2] = "1600 x 900";
            menu[2, 3] = "1366 x 768";
            menu[2, 4] = "1280 x 720";
            menu[2, 5] = "800 x 600";
            menu[2, 6] = "\nvoltar";
            #endregion

            #region controls

            menu[3, 0] = "configurações do teclado";
            menu[3, 1] = "configurações do gamepad";
            menu[3, 2] = "\nvoltar";

            #region controls submenu

            menu[31, 0] = "pra cima";
            menu[31, 1] = "para baixo";
            menu[31, 2] = "para à esquerda";
            menu[31, 3] = "para à direita";
            menu[31, 4] = "pular";
            menu[31, 5] = "atacar";
            menu[31, 6] = "dash";
            menu[31, 7] = "item";
            menu[31, 8] = "habilidade esp.";
            menu[31, 9] = "Seleção de arma";
            menu[31, 10] = "padrão 1";
            menu[31, 11] = "padrão 2";
            menu[31, 12] = "\nvoltar";

            menu[32, 0] = "voltar";


            #endregion

            #endregion

            #region sound
            menu[4, 0] = "música";
            menu[4, 1] = "\n\nefeitos especiais";
            menu[4, 2] = "\n\n\n\nvoltar";
            #endregion

            #region Confirm

            menu[5, 0] = "\n\n\n\n\n\n\n\n\n\n\n\nsim";
            menu[5, 1] = "\n\n\n\n\n\n\n\n\n\n\n\nnão";

            #endregion

            #region Credits

            menu[6,0] = "\n\n\n\n\n\n\n\n\n\nvoltar";
            musiccred = "música"
            #endregion
            
            #region Language
            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português (PT)";
            menu[41, 5]  = "Português (BR)";
            menu[41, 6]  = "Polski";            
            menu[41, 7]  = "日本語";
            menu[41, 8]  = "Deutsch";
            menu[41, 9]  = "Français";
            menu[41, 10] = "Italiano";
            menu[41, 11] = "\nvoltar";

            #endregion
            
        #endregion
        break;
    case 6: //polish
    #region
             #region Разное

            confirm_eng = @"Czy chcesz rozpocząć nową grę?
wszystkie poprzednie postępy zostaną utracone";

            #endregion

            #region mainmenu

            menu[0, 0] = "Kontynuuj";
            menu[0, 1] = "Nowa gra";
            menu[0, 2] = "Opcje";
            menu[0, 3] = "Credits";
            menu[0, 4] = "Wyjście";   

            #endregion

            #region options
            menu[1, 0] = "Grafika";
            menu[1, 1] = "Sterowanie";
            menu[1, 2] = "Dziwięk";
            menu[1, 3] = "Ustawienia języka";
            menu[1, 4] = "\nPowrót";
            #endregion

            #region graphics
            menu[2, 0] = "Pełny ekran";
            menu[2, 1] = "1920 x 1080";
            menu[2, 2] = "1600 x 900";
            menu[2, 3] = "1366 x 768";
            menu[2, 4] = "1280 x 720";
            menu[2, 5] = "800 x 600";
            menu[2, 6] = "\nPowrót";
            #endregion

            #region controls

            menu[3, 0] = "Ustawienia klawiatury";
            menu[3, 1] = "Ustawienia gamepada";
            menu[3, 2] = "\nPowrót";

            #region controls submenu

            menu[31, 0] = "Gór";
            menu[31, 1] = "Dół";
            menu[31, 2] = "Lewo";
            menu[31, 3] = "Prawo";
            menu[31, 4] = "Skok";
            menu[31, 5] = "Atak";
            menu[31, 6] = "Przeskok";
            menu[31, 7] = "przedmiot";
            menu[31, 8] = "umiejętność spec.";
            menu[31, 9] = "Wybór broni";
            menu[31, 10] = "domyślny 1";
            menu[31, 11] = "domyślny 2";
            menu[31, 12] = "\nPowrót";

            menu[32, 0] = "Powrót";


            #endregion

            #endregion

            #region sound
            menu[4, 0] = "muzyka";
            menu[4, 1] = "\n\nDzwięki";
            menu[4, 2] = "\n\n\n\nPowrót";
            #endregion

            #region Confirm

            menu[5, 0] = "\n\n\n\n\n\n\n\n\n\n\n\nTak";
            menu[5, 1] = "\n\n\n\n\n\n\n\n\n\n\n\nNie";

            #endregion

            #region Credits

            menu[6,0] = "\n\n\n\n\n\n\n\n\n\nPowrót";
            musiccred = "muzyka"
            #endregion
            
            #region Language
            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português (PT)";
            menu[41, 5]  = "Português (BR)";
            menu[41, 6]  = "Polski";            
            menu[41, 7]  = "日本語";
            menu[41, 8]  = "Deutsch";
            menu[41, 9]  = "Français";
            menu[41, 10] = "Italiano";
            menu[41, 11] = "\nPowrót";

            #endregion
            
        #endregion
        break;
    case 7: //japanese
    #region
             #region Разное

            confirm_eng = @"新しいゲームを開始しますか？
これまでの進行状況はすべて失われます";

            #endregion

            #region mainmenu

            menu[0, 0] = "コンティニュー";
            menu[0, 1] = "新しいゲーム";
            menu[0, 2] = "オプション";
            menu[0, 3] = "クレジット";
            menu[0, 4] = "終了";   

            #endregion

            #region options
            menu[1, 0] = "グラフィック";
            menu[1, 1] = "コントロール";
            menu[1, 2] = "サウンド";
            menu[1, 3] = "言語設定";
            menu[1, 4] = "\nバック";
            #endregion

            #region graphics
            menu[2, 0] = "フルスクリーン";
            menu[2, 1] = "1920 x 1080";
            menu[2, 2] = "1600 x 900";
            menu[2, 3] = "1366 x 768";
            menu[2, 4] = "1280 x 720";
            menu[2, 5] = "800 x 600";
            menu[2, 6] = "\nバック";
            #endregion

            #region controls

            menu[3, 0] = "キーボード設定";
            menu[3, 1] = "ゲームパッドの設定";
            menu[3, 2] = "\nバック";

            #region controls submenu

            menu[31, 0] = "上";
            menu[31, 1] = "下";
            menu[31, 2] = "左";
            menu[31, 3] = "右";
            menu[31, 4] = "ジャンプ";
            menu[31, 5] = "攻撃";
            menu[31, 6] = "ダッシュ";
            menu[31, 7] = "アイテム";
            menu[31, 8] = "スペック能力";
            menu[31, 9] = "武器選択";
            menu[31, 10] = "デフォルト1";
            menu[31, 11] = "デフォルト2";
            menu[31, 12] = "\nバック";

            menu[32, 0] = "バック";


            #endregion

            #endregion

            #region sound
            menu[4, 0] = "音楽";
            menu[4, 1] = "\n\nsfx";
            menu[4, 2] = "\n\n\n\nバック";
            #endregion

            #region Confirm

            menu[5, 0] = "\n\n\n\n\n\n\n\n\n\n\n\nはい";
            menu[5, 1] = "\n\n\n\n\n\n\n\n\n\n\n\nいいえ";

            #endregion

            #region Credits

            menu[6,0] = "\n\n\n\n\n\n\n\n\n\nバック";
            musiccred = "音楽"
            #endregion
            
            #region Language
            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português (PT)";
            menu[41, 5]  = "Português (BR)";
            menu[41, 6]  = "Polski";            
            menu[41, 7]  = "日本語";
            menu[41, 8]  = "Deutsch";
            menu[41, 9]  = "Français";
            menu[41, 10] = "Italiano";
            menu[41, 11] = "\nバック";

            #endregion
            
        #endregion
        break;
    case 8: //deutch
    #region
             #region Разное

            confirm_eng = @"Willst du ein neues Spiel beginnen?
alle bisherigen Fortschritte gehen verloren";

            #endregion

            #region mainmenu

            menu[0, 0] = "weiter";
            menu[0, 1] = "neues Spiel";
            menu[0, 2] = "Optionen";
            menu[0, 3] = "Autoren";
            menu[0, 4] = "beenden";   

            #endregion

            #region options
            menu[1, 0] = "Grafik";
            menu[1, 1] = "Steuerung";
            menu[1, 2] = "Ton";
            menu[1, 3] = "Spracheinstellungen";
            menu[1, 4] = "\nzurück";
            #endregion

            #region graphics
            menu[2, 0] = "Vollbild";
            menu[2, 1] = "1920 x 1080";
            menu[2, 2] = "1600 x 900";
            menu[2, 3] = "1366 x 768";
            menu[2, 4] = "1280 x 720";
            menu[2, 5] = "800 x 600";
            menu[2, 6] = "\nzurück";
            #endregion

            #region controls

            menu[3, 0] = "Tastatur-Einstellungen";
            menu[3, 1] = "Gamepad-Einstellungen";
            menu[3, 2] = "\nzurück";

            #region controls submenu

            menu[31, 0] = "oben";
            menu[31, 1] = "unten";
            menu[31, 2] = "links";
            menu[31, 3] = "rechts";
            menu[31, 4] = "springen";
            menu[31, 5] = "Angriff";
            menu[31, 6] = "Dashboard";
            menu[31, 7] = "Artikel";
            menu[31, 8] = "bes.Fähigkeit";
            menu[31, 9] = "Waffenauswahl";
            menu[31, 10] = "Standard 1";
            menu[31, 11] = "Standard 2";
            menu[31, 12] = "\nzurück";

            menu[32, 0] = "zurück";


            #endregion

            #endregion

            #region sound
            menu[4, 0] = "Musik";
            menu[4, 1] = "\n\nsfx";
            menu[4, 2] = "\n\n\n\nzurück";
            #endregion

            #region Confirm

            menu[5, 0] = "\n\n\n\n\n\n\n\n\n\n\n\nja";
            menu[5, 1] = "\n\n\n\n\n\n\n\n\n\n\n\nnein";

            #endregion

            #region Credits

            menu[6,0] = "\n\n\n\n\n\n\n\n\n\nzurück";
            musiccred = "Musik"
            #endregion
            
            #region Language
            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português (PT)";
            menu[41, 5]  = "Português (BR)";
            menu[41, 6]  = "Polski";            
            menu[41, 7]  = "日本語";
            menu[41, 8]  = "Deutsch";
            menu[41, 9]  = "Français";
            menu[41, 10] = "Italiano";
            menu[41, 11] = "\nzurück";

            #endregion
            
        #endregion
        break;
    case 9: //french
    #region
             #region Разное

            confirm_eng = @"voulez-vous commencer une nouvelle partie ?
tous les progrès précédents seront perdus";

            #endregion

            #region mainmenu

            menu[0, 0] = "continuer";
            menu[0, 1] = "nouvelle partie";
            menu[0, 2] = "options";
            menu[0, 3] = "crédits";
            menu[0, 4] = "quitter";   

            #endregion

            #region options
            menu[1, 0] = "graphiques";
            menu[1, 1] = "commandes";
            menu[1, 2] = "son";
            menu[1, 3] = "paramètres de langue";
            menu[1, 4] = "\nretour";
            #endregion

            #region graphics
            menu[2, 0] = "plein écran";
            menu[2, 1] = "1920 x 1080";
            menu[2, 2] = "1600 x 900";
            menu[2, 3] = "1366 x 768";
            menu[2, 4] = "1280 x 720";
            menu[2, 5] = "800 x 600";
            menu[2, 6] = "\nretour";
            #endregion

            #region controls

            menu[3, 0] = "paramètres du clavier";
            menu[3, 1] = "paramètres du gamepad";
            menu[3, 2] = "\nretour";

            #region controls submenu

            menu[31, 0] = "haut";
            menu[31, 1] = "bas";
            menu[31, 2] = "gauche";
            menu[31, 3] = "droite";
            menu[31, 4] = "sauter";
            menu[31, 5] = "attaquer";
            menu[31, 6] = "tableau de bord";
            menu[31, 7] = "objet";
            menu[31, 8] = "capacité spéc.";
            menu[31, 9] = "Sélection d'arme";
            menu[31, 10] = "défaut 1";
            menu[31, 11] = "défaut 2";
            menu[31, 12] = "\nretour";

            menu[32, 0] = "retour";


            #endregion

            #endregion

            #region sound
            menu[4, 0] = "musique";
            menu[4, 1] = "\n\nsfx";
            menu[4, 2] = "\n\n\n\nretour";
            #endregion

            #region Confirm

            menu[5, 0] = "\n\n\n\n\n\n\n\n\n\n\n\noui";
            menu[5, 1] = "\n\n\n\n\n\n\n\n\n\n\n\nnon";

            #endregion

            #region Credits

            menu[6,0] = "\n\n\n\n\n\n\n\n\n\nretour";
            musiccred = "musique"
            #endregion
            
            #region Language
            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português (PT)";
            menu[41, 5]  = "Português (BR)";
            menu[41, 6]  = "Polski";            
            menu[41, 7]  = "日本語";
            menu[41, 8]  = "Deutsch";
            menu[41, 9]  = "Français";
            menu[41, 10] = "Italiano";
            menu[41, 11] = "\nretour";

            #endregion
            
        #endregion
        break;
    case 10: // Italian
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
            menu[31, 9] = "Selezione arma";
            menu[31, 10] = "Predefinito 1";
            menu[31, 11] = "Predefinito 2";
            menu[31, 12] = "\nTorna";

            menu[32, 0] = "Torna";


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
            musiccred = "Musica"
            #endregion
            
            #region Language
            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português (PT)";
            menu[41, 5]  = "Português (BR)";
            menu[41, 6]  = "Polski";            
            menu[41, 7]  = "日本語";
            menu[41, 8]  = "Deutsch";
            menu[41, 9] = "Français";
            menu[41, 10] = "Italiano";
            menu[41, 11] = "\nTorna";

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
            menu[31, 9] = "weapon select";
            menu[31, 10] = "default 1";
            menu[31, 11] = "default 2";
            menu[31, 12] = "back";

            menu[32, 0] = "back";

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
            menu[41, 4]  = "Português (PT)";
            menu[41, 5]  = "Português (BR)";
            menu[41, 6]  = "Polski";
            menu[41, 7]  = "日本語";
            menu[41, 8]  = "Deutsch";
            menu[41, 9]  = "Français";
            menu[41, 10] = "Italiano";
            menu[41, 11] = "\nback";

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
You will lose all level progress and 
the collected dark essence,
but you will keep the found gold and green coins";

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
        menu[31, 9] = "СМЕНА ОРУЖИЯ";
        menu[31, 10] = "ПО УМОЛЧАНИЮ 1";
        menu[31, 11] = "ПО УМОЛЧАНИЮ 2";
        menu[31, 12] = "\nНАЗАД"

        menu[32, 0] = "назад";

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
        menu[41, 4]  = "Português (PT)";
        menu[41, 5]  = "Português (BR)";
        menu[41, 6]  = "Polski";
        menu[41, 7]  = "日本語";
        menu[41, 8]  = "Deutsch";
        menu[41, 9] = "Français";
        menu[41, 10] = "Italiano";
        menu[41, 11] = "\nназад";

        #endregion

        #region ПОдтверждения

        #region Подтверждения выхода на карту
        menu[10,0] = "\n\n\n\n\n\n\nда";
        menu[10,1] = "\n\n\n\n\n\n\nнет";

        #endregion

        #region Подтверждения выхода в меню
        menu[11,0] = "\n\n\nда";
        menu[11,1] = "\n\n\nнет";

        #endregion

        confirm1 = @"Вы уверены? 
Вы потеряете весь прогресс уровня 
и собранную темную эссенцию,
но сохранившееся золото и зеленые 
монеты останутся у вас";

        confirm2 = @"вы уверены?
весь несохраненный прогресс будет утерян";
        #endregion
        
        #endregion        
            break;
        case 2: //spanish
        #region ENG
        
            #region mainmenu
            menu[0, 0] = "opciones";
            menu[0, 1] = "\nreanudar";
            menu[0, 2] = "\nvolver al mapa";
            menu[0, 3] = "\nsalir al menú principal";

            #endregion

            #region options
            menu[1, 0] = "gráficos";
            menu[1, 1] = "controles";
            menu[1, 2] = "sonido";
            menu[1, 3] = "configuración de idioma";
            menu[1, 4] = "\natrás";
            #endregion

            #region graphics
            menu[2, 0] = "pantalla completa";
            menu[2, 1] = "1920 x 1080";
            menu[2, 2] = "1600 x 900";
            menu[2, 3] = "1366 x 768";
            menu[2, 4] = "1280 x 720";
            menu[2, 5] = "800 x 600";
            menu[2, 6] = "\natrás";
            #endregion

            #region controls

            menu[3, 0] = "configuración del teclado";
            menu[3, 1] = "configuración del gamepad";
            menu[3, 2] = "\natrás";

            #region controls submenu

            menu[31, 0] = "arriba";
            menu[31, 1] = "abajo";
            menu[31, 2] = "izquierda";
            menu[31, 3] = "derecha";
            menu[31, 4] = "saltar";
            menu[31, 5] = "ataque";
            menu[31, 6] = "dash";
            menu[31, 7] = "objeto";
            menu[31, 8] = "habilidad espec.";
            menu[31, 9] = "Selección de arma";
            menu[31, 10] = "por defecto 1";
            menu[31, 11] = "por defecto 2";
            menu[31, 12] = "\natrás";

            menu[32, 0] = "atrás";


            #endregion

            #endregion

            #region sound
            menu[4, 0] = "música";
            menu[4, 1] = "\n\nsfx";
            menu[4, 2] = "\n\n\n\natrás";
            #endregion

            #region Language

            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português (PT)";
            menu[41, 5]  = "Português (BR)";
            menu[41, 6]  = "Polski";            
            menu[41, 7]  = "日本語";
            menu[41, 8]  = "Deutsch";
            menu[41, 9] = "Français";
            menu[41, 10] = "Italiano";
            menu[41, 11] = "\natrás";

            #endregion
    
            #region ПОдтверждения

            #region Подтверждения выхода на карту
            menu[10,0] = "\n\n\n\n\n\nsí";
            menu[10,1] = "\n\n\n\n\n\nno";

            #endregion

            #region Подтверждения выхода в меню
            menu[11,0] = "\n\n\nsí";
            menu[11,1] = "\n\n\nno";

            #endregion

            confirm1 = @"¿estás seguro? 
Perderás todo el progreso del nivel 
y la esencia oscura recogida, 
pero conservarás el oro encontrado 
y las monedas verdes.";

            confirm2 = @"¿estás seguro?
todo el progreso no guardado se perderá";
            #endregion

#endregion
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
            menu[31, 9] = "择武器";
            menu[31, 10] = "缺省 1";
            menu[31, 11] = "缺省 2";
            menu[31, 12] = "\n回去";

            menu[32, 0] = "回去";

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
            menu[41, 4]  = "Português (PT)";
            menu[41, 5]  = "Português (BR)";
            menu[41, 6]  = "Polski";
            menu[41, 7]  = "日本語";
            menu[41, 8]  = "Deutsch";
            menu[41, 9] = "Français";
            menu[41, 10] = "Italiano";
            menu[41, 11] = "\n回去";

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
将失去所有级别进度和收集的黑暗精华,
但是你会保留找到的金币和绿色硬币.";

            confirm2 = @"你确定吗?
所有未保存的进度都将丢失";
            #endregion

#endregion
            break;
        case 4: //portug
        #region ENG
        
            #region mainmenu
            menu[0, 0] = "opções";
            menu[0, 1] = "\nreanudar";
            menu[0, 2] = "\nvolver al mapa";
            menu[0, 3] = "\nsalir al menú principal";

            #endregion

            #region options
            menu[1, 0] = "gráficos";
            menu[1, 1] = "controlos";
            menu[1, 2] = "som";
            menu[1, 3] = "definições de idioma";
            menu[1, 4] = "\nvoltar";
            #endregion

            #region graphics
            menu[2, 0] = "ecrã completo";
            menu[2, 1] = "1920 x 1080";
            menu[2, 2] = "1600 x 900";
            menu[2, 3] = "1366 x 768";
            menu[2, 4] = "1280 x 720";
            menu[2, 5] = "800 x 600";
            menu[2, 6] = "\nvoltar";
            #endregion

            #region controls

            menu[3, 0] = "definições do teclado";
            menu[3, 1] = "definições do gamepad";
            menu[3, 2] = "\nvoltar";

            #region controls submenu

            menu[31, 0] = "pra cima";
            menu[31, 1] = "para baixo";
            menu[31, 2] = "para à esquerda";
            menu[31, 3] = "para à direita";
            menu[31, 4] = "saltar";
            menu[31, 5] = "atacar";
            menu[31, 6] = "dash";
            menu[31, 7] = "item";
            menu[31, 8] = "habilidade esp.";
            menu[31, 9] = "Seleção de arma";
            menu[31, 10] = "padrão 1";
            menu[31, 11] = "padrão 2";
            menu[31, 12] = "\nvolta";

            menu[32, 0] = "\n\n\n\n\n\n\n\nvolta";


            #endregion

            #endregion

            #region sound
            menu[4, 0] = "música";
            menu[4, 1] = "\n\nefeitos especiais";
            menu[4, 2] = "\n\n\n\nvolta";
            #endregion

            #region Language
            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português (PT)";
            menu[41, 5]  = "Português (BR)";
            menu[41, 6]  = "Polski";            
            menu[41, 7]  = "日本語";
            menu[41, 8]  = "Deutsch";
            menu[41, 9]  = "Français";
            menu[41, 10] = "Italiano";
            menu[41, 11] = "\nvoltar";

            #endregion
    
            #region ПОдтверждения

            #region Подтверждения выхода на карту
            menu[10,0] = "\n\n\n\n\nsim";
            menu[10,1] = "\n\n\n\n\nnão";

            #endregion

            #region Подтверждения выхода в меню
            menu[11,0] = "\n\n\nsim";
            menu[11,1] = "\n\n\nnão";

            #endregion

            confirm1 = @"Tens a certeza?  
Perderás todo el progreso en el nivel 
y la esencia oscura recogida,
mas manterá o ouro encontrado e as moedas verdes.";

            confirm2 = @"Tens a certeza?
todo os progresso não guardado será perdido";
            #endregion

#endregion
            break;
        case 5: //brazil
        #region ENG
        
            #region mainmenu
            menu[0, 0] = "opções";
            menu[0, 1] = "\nretomar";
            menu[0, 2] = "\nvoltar ao mapa";
            menu[0, 3] = "\nsair para o menu principal";

            #endregion

            #region options
            menu[1, 0] = "gráficos";
            menu[1, 1] = "controles";
            menu[1, 2] = "sons";
            menu[1, 3] = "configurações de idioma";
            menu[1, 4] = "\nvoltar";
            #endregion

            #region graphics
            menu[2, 0] = "tela cheia";
            menu[2, 1] = "1920 x 1080";
            menu[2, 2] = "1600 x 900";
            menu[2, 3] = "1366 x 768";
            menu[2, 4] = "1280 x 720";
            menu[2, 5] = "800 x 600";
            menu[2, 6] = "\nvoltar";
            #endregion

            #region controls

            menu[3, 0] = "configurações do teclado";
            menu[3, 1] = "configurações do gamepad";
            menu[3, 2] = "\nvoltar";

            #region controls submenu

            menu[31, 0] = "pra cima";
            menu[31, 1] = "para baixo";
            menu[31, 2] = "para à esquerda";
            menu[31, 3] = "para à direita";
            menu[31, 4] = "pular";
            menu[31, 5] = "atacar";
            menu[31, 6] = "dash";
            menu[31, 7] = "item";
            menu[31, 8] = "habilidade esp.";
            menu[31, 9] = "Seleção de arma";
            menu[31, 10] = "padrão 1";
            menu[31, 11] = "padrão 2";
            menu[31, 12] = "\nvoltar";

            menu[32, 0] = "voltar";


            #endregion

            #endregion

            #region sound
            menu[4, 0] = "música";
            menu[4, 1] = "\n\nefeitos especiais";
            menu[4, 2] = "\n\n\n\nvoltar";
            #endregion

            #region Language

            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português (PT)";
            menu[41, 5]  = "Português (BR)";
            menu[41, 6]  = "Polski";            
            menu[41, 7]  = "日本語";
            menu[41, 8]  = "Deutsch";
            menu[41, 9]  = "Français";
            menu[41, 10] = "Italiano";
            menu[41, 11] = "\nvoltar";

            #endregion
    
            #region ПОдтверждения

            #region Подтверждения выхода на карту
            menu[10,0] = "\n\n\n\n\nsim";
            menu[10,1] = "\n\n\n\n\nnão";

            #endregion

            #region Подтверждения выхода в меню
            menu[11,0] = "\n\n\nsim";
            menu[11,1] = "\n\n\nnão";

            #endregion

            confirm1 = @"Tens a certeza?  
Perderás todo el progreso en el nivel 
y la esencia oscura recogida,
mas manterá o ouro encontrado e as moedas verdes.";

            confirm2 = @"Tem certeza? 
todo o progresso não salvo será perdido";
            #endregion

#endregion
            break;
        case 6: //polish
        #region ENG
        
            #region mainmenu
            menu[0, 0] = "Opcje";
            menu[0, 1] = "\nWznów";
            menu[0, 2] = "\nWróć na mapę";
            menu[0, 3] = "\nWyjście do menu głównego";

            #endregion

            #region options
            menu[1, 0] = "Grafika";
            menu[1, 1] = "Sterowanie";
            menu[1, 2] = "Dziwięk";
            menu[1, 3] = "Ustawienia języka";
            menu[1, 4] = "\nPowrót";
            #endregion

            #region graphics
            menu[2, 0] = "Pełny ekran";
            menu[2, 1] = "1920 x 1080";
            menu[2, 2] = "1600 x 900";
            menu[2, 3] = "1366 x 768";
            menu[2, 4] = "1280 x 720";
            menu[2, 5] = "800 x 600";
            menu[2, 6] = "\nPowrót";
            #endregion

            #region controls

            menu[3, 0] = "Ustawienia klawiatury";
            menu[3, 1] = "Ustawienia gamepada";
            menu[3, 2] = "\nPowrót";

            #region controls submenu

            menu[31, 0] = "Gór";
            menu[31, 1] = "Dół";
            menu[31, 2] = "Lewo";
            menu[31, 3] = "Prawo";
            menu[31, 4] = "Skok";
            menu[31, 5] = "Atak";
            menu[31, 6] = "Przeskok";
            menu[31, 7] = "przedmiot";
            menu[31, 8] = "umiejętność spec.";
            menu[31, 9] = "Wybór broni";
            menu[31, 10] = "domyślny 1";
            menu[31, 11] = "domyślny 2";
            menu[31, 12] = "\nPowrót";
                          
            menu[32, 0] = "Powrót";

            #endregion

            #endregion

            #region sound
            menu[4, 0] = "muzyka";
            menu[4, 1] = "\n\nDzwięki";
            menu[4, 2] = "\n\n\n\nPowrót";
            #endregion

            #region Language

            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português (PT)";
            menu[41, 5]  = "Português (BR)";
            menu[41, 6]  = "Polski";
            menu[41, 7]  = "日本語";
            menu[41, 8]  = "Deutsch";
            menu[41, 9] = "Français";
            menu[41, 10] = "Italiano";
            menu[41, 11] = "\nPowrót";

            #endregion
    
            #region ПОдтверждения

            #region Подтверждения выхода на карту
            menu[10,0] = "\n\n\n\nTak";
            menu[10,1] = "\n\n\n\nNie";

            #endregion

            #region Подтверждения выхода в меню
            menu[11,0] = "\n\n\nTak";
            menu[11,1] = "\n\n\nNie";

            #endregion

            confirm1 = @"Czy jesteś pewien?  
Stracisz cały postęp poziomu i zebraną ciemną esencję,
ale zachowasz znalezione złoto i zielone monety.";

            confirm2 = @"Czy jesteś pewien?
Stracisz cały nie zapisany postęp.";
            #endregion

#endregion
            break;
        case 7: //japanese
        #region ENG
        
            #region mainmenu
            menu[0, 0] = "オプション";
            menu[0, 1] = "\n再開";
            menu[0, 2] = "\nマップに戻る";
            menu[0, 3] = "\nメインメニューに戻る";

            #endregion

            #region options
            menu[1, 0] = "グラフィック";
            menu[1, 1] = "コントロール";
            menu[1, 2] = "サウンド";
            menu[1, 3] = "言語設定";
            menu[1, 4] = "\nバック";
            #endregion

            #region graphics
            menu[2, 0] = "フルスクリーン";
            menu[2, 1] = "1920 x 1080";
            menu[2, 2] = "1600 x 900";
            menu[2, 3] = "1366 x 768";
            menu[2, 4] = "1280 x 720";
            menu[2, 5] = "800 x 600";
            menu[2, 6] = "\nバック";
            #endregion

            #region controls

            menu[3, 0] = "キーボード設定";
            menu[3, 1] = "ゲームパッドの設定";
            menu[3, 2] = "\nバック";

            #region controls submenu

            menu[31, 0] = "上";
            menu[31, 1] = "下";
            menu[31, 2] = "左";
            menu[31, 3] = "右";
            menu[31, 4] = "ジャンプ";
            menu[31, 5] = "攻撃";
            menu[31, 6] = "ダッシュ";
            menu[31, 7] = "アイテム";
            menu[31, 8] = "スペック能力";
            menu[31, 9] = "武器選択";
            menu[31, 10] = "デフォルト1";
            menu[31, 11] = "デフォルト2";
            menu[31, 12] = "\nバック";

            menu[32, 0] = "バック";


            #endregion

            #endregion

            #region sound
            menu[4, 0] = "音楽";
            menu[4, 1] = "\n\nsfx";
            menu[4, 2] = "\n\n\n\nバック";
            #endregion

            #region Language

            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português (PT)";
            menu[41, 5]  = "Português (BR)";
            menu[41, 6]  = "Polski";            
            menu[41, 7]  = "日本語";
            menu[41, 8]  = "Deutsch";
            menu[41, 9]  = "Français";
            menu[41, 10] = "Italiano";
            menu[41, 11] = "\nバック";

            #endregion
    
            #region ПОдтверждения

            #region Подтверждения выхода на карту
            menu[10,0] = "\n\n\n\nはい";
            menu[10,1] = "\n\n\n\nいいえ";

            #endregion

            #region Подтверждения выхода в меню
            menu[11,0] = "\n\n\nはい";
            menu[11,1] = "\n\n\nいいえ";

            #endregion

            confirm1 = @"本当によろしいですか？ 
すべてのレベルの進行と収集したダークエッセンスが失われますが、
見つけた金と緑のコインは保持されます。";

            confirm2 = @"本当によろしいですか？
セーブされていない進行状況はすべて失われます";
            #endregion

#endregion
            break;
        case 8: //deutch
        #region ENG
        
            #region mainmenu
            menu[0, 0] = "Optionen";
            menu[0, 1] = "\nfortsetzen";
            menu[0, 2] = "\nzurück zur Karte";
            menu[0, 3] = "\nzurück zum Hauptmenü";

            #endregion

            #region options
            menu[1, 0] = "Grafik";
            menu[1, 1] = "Steuerung";
            menu[1, 2] = "Ton";
            menu[1, 3] = "Spracheinstellungen";
            menu[1, 4] = "\nzurück";
            #endregion

            #region graphics
            menu[2, 0] = "Vollbild";
            menu[2, 1] = "1920 x 1080";
            menu[2, 2] = "1600 x 900";
            menu[2, 3] = "1366 x 768";
            menu[2, 4] = "1280 x 720";
            menu[2, 5] = "800 x 600";
            menu[2, 6] = "\nzurück";
            #endregion

            #region controls

            menu[3, 0] = "Tastatur-Einstellungen";
            menu[3, 1] = "Gamepad-Einstellungen";
            menu[3, 2] = "\nzurück";

            #region controls submenu

            menu[31, 0] = "oben";
            menu[31, 1] = "unten";
            menu[31, 2] = "links";
            menu[31, 3] = "rechts";
            menu[31, 4] = "springen";
            menu[31, 5] = "Angriff";
            menu[31, 6] = "Dashboard";
            menu[31, 7] = "Artikel";
            menu[31, 8] = "bes.Fähigkeit";
            menu[31, 9] = "Waffenauswahl";
            menu[31, 10] = "Standard 1";
            menu[31, 11] = "Standard 2";
            menu[31, 12] = "\nzurück";

            menu[32, 0] = "zurück";


            #endregion

            #endregion

            #region sound
            menu[4, 0] = "Musik";
            menu[4, 1] = "\n\nsfx";
            menu[4, 2] = "\n\n\n\nzurück";
            #endregion

            #region Language

            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português (PT)";
            menu[41, 5]  = "Português (BR)";
            menu[41, 6]  = "Polski";
            menu[41, 7]  = "日本語";
            menu[41, 8]  = "Deutsch";
            menu[41, 9] = "Français";
            menu[41, 10] = "Italiano";
            menu[41, 11] = "\nzurück";

            #endregion
    
            #region ПОдтверждения

            #region Подтверждения выхода на карту
            menu[10,0] = "\n\n\n\n\n\nja";
            menu[10,1] = "\n\n\n\n\n\nnein";

            #endregion

            #region Подтверждения выхода в меню
            menu[11,0] = "\n\n\nja";
            menu[11,1] = "\n\n\nnein";

            #endregion

            confirm1 = @"Bist du sicher? 
Sie werden alle Level-Fortschritte 
und die gesammelte dunkle Essenz verlieren,
aber Sie behalten das gefundene Gold 
und die grünen Münzen.";

            confirm2 = @"Bist du sicher?
alle nicht gespeicherten Fortschritte gehen verloren";
            #endregion

#endregion
            break;
        case 9: //french
        #region ENG
        
            #region mainmenu
            menu[0, 0] = "options";
            menu[0, 1] = "\nreprendre";
            menu[0, 2] = "\nretour à la carte";
            menu[0, 3] = "\nquitter le menu principal";

            #endregion

             #region options
            menu[1, 0] = "graphiques";
            menu[1, 1] = "commandes";
            menu[1, 2] = "son";
            menu[1, 3] = "paramètres de langue";
            menu[1, 4] = "\nretour";
            #endregion

            #region graphics
            menu[2, 0] = "plein écran";
            menu[2, 1] = "1920 x 1080";
            menu[2, 2] = "1600 x 900";
            menu[2, 3] = "1366 x 768";
            menu[2, 4] = "1280 x 720";
            menu[2, 5] = "800 x 600";
            menu[2, 6] = "\nretour";
            #endregion

            #region controls

            menu[3, 0] = "paramètres du clavier";
            menu[3, 1] = "paramètres du gamepad";
            menu[3, 2] = "\nretour";

            #region controls submenu

            menu[31, 0] = "haut";
            menu[31, 1] = "bas";
            menu[31, 2] = "gauche";
            menu[31, 3] = "droite";
            menu[31, 4] = "sauter";
            menu[31, 5] = "attaquer";
            menu[31, 6] = "tableau de bord";
            menu[31, 7] = "objet";
            menu[31, 8] = "capacité spéc.";
            menu[31, 9] = "Sélection d'arme";
            menu[31, 10] = "défaut 1";
            menu[31, 11] = "défaut 2";
            menu[31, 12] = "\nretour";

            menu[32, 0] = "retour";


            #endregion

            #endregion

            #region sound
            menu[4, 0] = "musique";
            menu[4, 1] = "\n\nsfx";
            menu[4, 2] = "\n\n\n\nretour";
            #endregion

            #region Language

            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português (PT)";
            menu[41, 5]  = "Português (BR)";
            menu[41, 6]  = "Polski";            
            menu[41, 7]  = "日本語";
            menu[41, 8]  = "Deutsch";
            menu[41, 9]  = "Français";
            menu[41, 10] = "Italiano";
            menu[41, 11] = "\nretour";

            #endregion
    
            #region ПОдтверждения

            #region Подтверждения выхода на карту
            menu[10,0] = "\n\n\n\n\n\noui";
            menu[10,1] = "\n\n\n\n\n\nnon";

            #endregion

            #region Подтверждения выхода в меню
            menu[11,0] = "\n\n\noui";
            menu[11,1] = "\n\n\nnon";

            #endregion

            confirm1 = @"Vous êtes sûr ?  
Vous perdrez toute progression de niveau 
et l'essence sombre collectée,
mais vous garderez l'or trouvé 
et les pièces vertes";

            confirm2 = @"Vous êtes sûr ? 
toute progression non sauvegardée sera perdue";
            #endregion

#endregion
            break;
        case 10: // Italian
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
            menu[31, 9] = "Selezione arma";
            menu[31, 10] = "Predefinito 1";
            menu[31, 11] = "Predefinito 2";
            menu[31, 12] = "\nTorna";

            menu[32, 0] = "Torna";

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
            menu[41, 4]  = "Português (PT)";
            menu[41, 5]  = "Português (BR)";
            menu[41, 6]  = "Polski";            
            menu[41, 7]  = "日本語";
            menu[41, 8]  = "Deutsch";
            menu[41, 9] = "Français";
            menu[41, 10] = "Italiano";
            menu[41, 11] = "\nTorna";

            #endregion
    
            #region ПОдтверждения

            #region Подтверждения выхода на карту
            menu[10,0] = "\n\n\n\n\n\nSì";
            menu[10,1] = "\n\n\n\n\n\nNo";

            #endregion

            #region Подтверждения выхода в меню
            menu[11,0] = "\n\n\nSì";
            menu[11,1] = "\n\n\nNo";

            #endregion

            confirm1 = @"Sei sicuro? 
Perderai tutti i progressi di livello 
e l'essenza oscura raccolta,
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
            menu[31, 9] = "weapon select";
            menu[31, 10] = "default 1";
            menu[31, 11] = "default 2";
            menu[31, 12] = "\nback";

            menu[32, 0] = "back";

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
            menu[41, 4]  = "Português (PT)";
            menu[41, 5]  = "Português (BR)";
            menu[41, 6]  = "Polski";
            menu[41, 7]  = "日本語";
            menu[41, 8]  = "Deutsch";
            menu[41, 9] = "Français";
            menu[41, 10] = "Italiano";
            menu[41, 11] = "\nback";

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
        menu[31, 9] = "выбор оружия";
        menu[31, 10] = "по умолчанию 1";
        menu[31, 11] = "по умолчанию 2";
        menu[31, 12] = "\nназад";

        menu[32, 0] = "назад";

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
        menu[41, 4]  = "Português (PT)";
        menu[41, 5]  = "Português (BR)";
        menu[41, 6]  = "Polski";
        menu[41, 7]  = "日本語";
        menu[41, 8]  = "Deutsch";
        menu[41, 9] = "Français";
        menu[41, 10] = "Italiano";
        menu[41, 11] = "\nназад";

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
        #region ENG
            #region mainmenu
            menu[0, 0] = "opciones";
            menu[0, 1] = "\nreanudar";
            menu[0, 2] = "\nal pueblo";
            menu[0, 3] = "\nsalir al menú principal";

            #endregion

            #region options
            menu[1, 0] = "gráficos";
            menu[1, 1] = "controles";
            menu[1, 2] = "sonido";
            menu[1, 3] = "configuración de idioma";
            menu[1, 4] = "\natrás";
            #endregion

            #region graphics
            menu[2, 0] = "pantalla completa";
            menu[2, 1] = "1920 x 1080";
            menu[2, 2] = "1600 x 900";
            menu[2, 3] = "1366 x 768";
            menu[2, 4] = "1280 x 720";
            menu[2, 5] = "800 x 600";
            menu[2, 6] = "\natrás";
            #endregion

            #region controls

            menu[3, 0] = "configuración del teclado";
            menu[3, 1] = "configuración del gamepad";
            menu[3, 2] = "\natrás";

            #region controls submenu

            menu[31, 0] = "arriba";
            menu[31, 1] = "abajo";
            menu[31, 2] = "izquierda";
            menu[31, 3] = "derecha";
            menu[31, 4] = "saltar";
            menu[31, 5] = "ataque";
            menu[31, 6] = "dash";
            menu[31, 7] = "objeto";
            menu[31, 8] = "habilidad espec.";
            menu[31, 9] = "Selección de arma";
            menu[31, 10] = "por defecto 1";
            menu[31, 11] = "por defecto 2";
            menu[31, 12] = "\natrás";

            menu[32, 0] = "atrás";


            #endregion

            #endregion

            #region sound
            menu[4, 0] = "música";
            menu[4, 1] = "\n\nsfx";
            menu[4, 2] = "\n\n\n\natrás";
            #endregion

            #region Language

            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português (PT)";
            menu[41, 5]  = "Português (BR)";
            menu[41, 6]  = "Polski";            
            menu[41, 7]  = "日本語";
            menu[41, 8]  = "Deutsch";
            menu[41, 9] = "Français";
            menu[41, 10] = "Italiano";
            menu[41, 11] = "\natrás";

            #endregion
    
            #region ПОдтверждения

            #region Подтверждения выхода на карту
            menu[10,0] = "\n\nsí";
            menu[10,1] = "\n\nno";

            #endregion

            #region Подтверждения выхода в меню
            menu[11,0] = "\n\n\nsí";
            menu[11,1] = "\n\n\nno";

            #endregion

            confirm1 = "¿estás seguro?";

            confirm2 = @"¿estás seguro?
todo el progreso no guardado se perderá";
            #endregion
            
            #endregion
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
            menu[31, 8] = "专长";
            menu[31, 9] = "择武器";
            menu[31, 10] = "缺省 1";
            menu[31, 11] = "缺省 2";
            menu[31, 12] = "\n回去";
            
            menu[32, 0] = "回去";

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
            menu[41, 4]  = "Português (PT)";
            menu[41, 5]  = "Português (BR)";
            menu[41, 6]  = "Polski";
            menu[41, 7]  = "日本語";
            menu[41, 8]  = "Deutsch";
            menu[41, 9] = "Français";
            menu[41, 10] = "Italiano";
            menu[41, 11] = "\n回去";

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
        #region ENG
            #region mainmenu
            menu[0, 0] = "opções";
            menu[0, 1] = "\nreanudar";
            menu[0, 2] = "\npara a aldeia";
            menu[0, 3] = "\nsalir al menú principal";

            #endregion

             #region options
            menu[1, 0] = "gráficos";
            menu[1, 1] = "controlos";
            menu[1, 2] = "som";
            menu[1, 3] = "definições de idioma";
            menu[1, 4] = "\nvoltar";
            #endregion

            #region graphics
            menu[2, 0] = "ecrã completo";
            menu[2, 1] = "1920 x 1080";
            menu[2, 2] = "1600 x 900";
            menu[2, 3] = "1366 x 768";
            menu[2, 4] = "1280 x 720";
            menu[2, 5] = "800 x 600";
            menu[2, 6] = "\nvoltar";
            #endregion

            #region controls

            menu[3, 0] = "definições do teclado";
            menu[3, 1] = "definições do gamepad";
            menu[3, 2] = "\nvoltar";

            #region controls submenu

            menu[31, 0] = "pra cima";
            menu[31, 1] = "para baixo";
            menu[31, 2] = "para à esquerda";
            menu[31, 3] = "para à direita";
            menu[31, 4] = "saltar";
            menu[31, 5] = "atacar";
            menu[31, 6] = "dash";
            menu[31, 7] = "item";
            menu[31, 8] = "habilidade esp.";
            menu[31, 9] = "Seleção de arma";
            menu[31, 10] = "padrão 1";
            menu[31, 11] = "padrão 2";
            menu[31, 12] = "\nvolta";

            menu[32, 0] = "volta";


            #endregion

            #endregion

            #region sound
            menu[4, 0] = "música";
            menu[4, 1] = "\n\nefeitos especiais";
            menu[4, 2] = "\n\n\n\nvolta";
            #endregion

            #region Language
            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português (PT)";
            menu[41, 5]  = "Português (BR)";
            menu[41, 6]  = "Polski";            
            menu[41, 7]  = "日本語";
            menu[41, 8]  = "Deutsch";
            menu[41, 9]  = "Français";
            menu[41, 10] = "Italiano";
            menu[41, 11] = "\nvoltar";

            #endregion
    
            #region ПОдтверждения

            #region Подтверждения выхода на карту
            menu[10,0] = "\n\nsim";
            menu[10,1] = "\n\nnão";

            #endregion

            #region Подтверждения выхода в меню
            menu[11,0] = "\n\n\nsim";
            menu[11,1] = "\n\n\nnão";

            #endregion

            confirm1 = "Tens a certeza? ";

            confirm2 = @"Tens a certeza? 
todo os progresso não guardado será perdido";
            #endregion
            
            #endregion
            break;
        case 5: //brazil
        #region ENG
            #region mainmenu
            menu[0, 0] = "opções";
            menu[0, 1] = "\nretomar";
            menu[0, 2] = "\nà aldeia";
            menu[0, 3] = "\nsair para o menu principal";

            #endregion

            #region options
            menu[1, 0] = "gráficos";
            menu[1, 1] = "controles";
            menu[1, 2] = "sons";
            menu[1, 3] = "configurações de idioma";
            menu[1, 4] = "\nvoltar";
            #endregion

            #region graphics
            menu[2, 0] = "tela cheia";
            menu[2, 1] = "1920 x 1080";
            menu[2, 2] = "1600 x 900";
            menu[2, 3] = "1366 x 768";
            menu[2, 4] = "1280 x 720";
            menu[2, 5] = "800 x 600";
            menu[2, 6] = "\nvoltar";
            #endregion

            #region controls

            menu[3, 0] = "configurações do teclado";
            menu[3, 1] = "configurações do gamepad";
            menu[3, 2] = "\nvoltar";

            #region controls submenu

            menu[31, 0] = "pra cima";
            menu[31, 1] = "para baixo";
            menu[31, 2] = "para à esquerda";
            menu[31, 3] = "para à direita";
            menu[31, 4] = "pular";
            menu[31, 5] = "atacar";
            menu[31, 6] = "dash";
            menu[31, 7] = "item";
            menu[31, 8] = "habilidade esp.";
            menu[31, 9] = "Seleção de arma";
            menu[31, 10] = "padrão 1";
            menu[31, 11] = "padrão 2";
            menu[31, 12] = "\nvoltar";

            menu[32, 0] = "voltar";


            #endregion

            #endregion

            #region sound
            menu[4, 0] = "música";
            menu[4, 1] = "\n\nefeitos especiais";
            menu[4, 2] = "\n\n\n\nvoltar";
            #endregion

            #region Language

            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português (PT)";
            menu[41, 5]  = "Português (BR)";
            menu[41, 6]  = "Polski";            
            menu[41, 7]  = "日本語";
            menu[41, 8]  = "Deutsch";
            menu[41, 9]  = "Français";
            menu[41, 10] = "Italiano";
            menu[41, 11] = "\nvoltar";

            #endregion
    
            #region ПОдтверждения

            #region Подтверждения выхода на карту
            menu[10,0] = "\n\nsim";
            menu[10,1] = "\n\nnão";

            #endregion

            #region Подтверждения выхода в меню
            menu[11,0] = "\n\n\nsim";
            menu[11,1] = "\n\n\nnão";

            #endregion

            confirm1 = "Tem certeza? ";

            confirm2 = @"Tem certeza? 
todo o progresso não salvo será perdido";
            #endregion
            
            #endregion
            break;
        case 6: //polish
        #region ENG
            #region mainmenu
            menu[0, 0] = "Opcje";
            menu[0, 1] = "\nWznów";
            menu[0, 2] = "\nWróć na mapę";
            menu[0, 3] = "\nWyjście do menu głównego";

            #endregion

            #region options
            menu[1, 0] = "Grafika";
            menu[1, 1] = "Sterowanie";
            menu[1, 2] = "Dziwięk";
            menu[1, 3] = "Ustawienia języka";
            menu[1, 4] = "\nPowrót";
            #endregion

            #region graphics
            menu[2, 0] = "Pełny ekran";
            menu[2, 1] = "1920 x 1080";
            menu[2, 2] = "1600 x 900";
            menu[2, 3] = "1366 x 768";
            menu[2, 4] = "1280 x 720";
            menu[2, 5] = "800 x 600";
            menu[2, 6] = "\nPowrót";
            #endregion

            #region controls

            menu[3, 0] = "Ustawienia klawiatury";
            menu[3, 1] = "Ustawienia gamepada";
            menu[3, 2] = "\nPowrót";

            #region controls submenu

            menu[31, 0] = "Gór";
            menu[31, 1] = "Dół";
            menu[31, 2] = "Lewo";
            menu[31, 3] = "Prawo";
            menu[31, 4] = "Skok";
            menu[31, 5] = "Atak";
            menu[31, 6] = "Przeskok";
            menu[31, 7] = "przedmiot";
            menu[31, 8] = "umiejętność spec.";
            menu[31, 9] = "Wybór broni";
            menu[31, 10] = "domyślny 1";
            menu[31, 11] = "domyślny 2";
            menu[31, 12] = "\nPowrót";

            menu[32, 0] = "Powrót";

            #endregion

            #endregion

            #region sound
            menu[4, 0] = "muzyka";
            menu[4, 1] = "\n\nDzwięki";
            menu[4, 2] = "\n\n\n\nPowrót";
            #endregion

            #region Language

            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português (PT)";
            menu[41, 5]  = "Português (BR)";
            menu[41, 6]  = "Polski";
            menu[41, 7]  = "日本語";
            menu[41, 8]  = "Deutsch";
            menu[41, 9] = "Français";
            menu[41, 10] = "Italiano";
            menu[41, 11] = "\nPowrót";

            #endregion

            #region ПОдтверждения

            #region Подтверждения выхода на карту
            menu[10,0] = "\n\nTak";
            menu[10,1] = "\n\nNie";

            #endregion

            #region Подтверждения выхода в меню
            menu[11,0] = "\n\n\nTak";
            menu[11,1] = "\n\n\nNie";

            #endregion

            confirm1 = "Czy jesteś pewien?";

            confirm2 =@"Czy jesteś pewien?
Stracisz cały nie zapisany postęp.";
            #endregion
            
            #endregion
            break;
        case 7: //japanese
        #region ENG
            
            #region mainmenu
            menu[0, 0] = "オプション";
            menu[0, 1] = "\n再開";
            menu[0, 2] = "\n村へ";
            menu[0, 3] = "\nメインメニューに戻る";

            #endregion

            #region options
            menu[1, 0] = "グラフィック";
            menu[1, 1] = "コントロール";
            menu[1, 2] = "サウンド";
            menu[1, 3] = "言語設定";
            menu[1, 4] = "\nバック";
            #endregion

            #region graphics
            menu[2, 0] = "フルスクリーン";
            menu[2, 1] = "1920 x 1080";
            menu[2, 2] = "1600 x 900";
            menu[2, 3] = "1366 x 768";
            menu[2, 4] = "1280 x 720";
            menu[2, 5] = "800 x 600";
            menu[2, 6] = "\nバック";
            #endregion

            #region controls

            menu[3, 0] = "キーボード設定";
            menu[3, 1] = "ゲームパッドの設定";
            menu[3, 2] = "\nバック";

            #region controls submenu

            menu[31, 0] = "上";
            menu[31, 1] = "下";
            menu[31, 2] = "左";
            menu[31, 3] = "右";
            menu[31, 4] = "ジャンプ";
            menu[31, 5] = "攻撃";
            menu[31, 6] = "ダッシュ";
            menu[31, 7] = "アイテム";
            menu[31, 8] = "スペック能力";
            menu[31, 9] = "武器選択";
            menu[31, 10] = "デフォルト1";
            menu[31, 11] = "デフォルト2";
            menu[31, 12] = "\nバック";

            menu[32, 0] = "バック";


            #endregion

            #endregion

            #region sound
            menu[4, 0] = "音楽";
            menu[4, 1] = "\n\nsfx";
            menu[4, 2] = "\n\n\n\nバック";
            #endregion

            #region Language

            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português (PT)";
            menu[41, 5]  = "Português (BR)";
            menu[41, 6]  = "Polski";            
            menu[41, 7]  = "日本語";
            menu[41, 8]  = "Deutsch";
            menu[41, 9]  = "Français";
            menu[41, 10] = "Italiano";
            menu[41, 11] = "\nバック";

            #endregion
    
            #region ПОдтверждения

            #region Подтверждения выхода на карту
            menu[10,0] = "\n\nはい";
            menu[10,1] = "\n\nいいえ";

            #endregion

            #region Подтверждения выхода в меню
            menu[11,0] = "\n\n\nはい";
            menu[11,1] = "\n\n\nいいえ";

            #endregion

            confirm1 = @"本当によろしいですか？";

            confirm2 = @"本当によろしいですか？
セーブされていない進行状況はすべて失われます";
            #endregion
            
            #endregion
            break;
        case 8: //deutch
        #region ENG
            #region mainmenu
            menu[0, 0] = "Optionen";
            menu[0, 1] = "\nfortsetzen";
            menu[0, 2] = "\nzurück zum Dorf";
            menu[0, 3] = "\nzurück zum Hauptmenü";

            #endregion

            #region options
            menu[1, 0] = "Grafik";
            menu[1, 1] = "Steuerung";
            menu[1, 2] = "Ton";
            menu[1, 3] = "Spracheinstellungen";
            menu[1, 4] = "\nzurück";
            #endregion

            #region graphics
            menu[2, 0] = "Vollbild";
            menu[2, 1] = "1920 x 1080";
            menu[2, 2] = "1600 x 900";
            menu[2, 3] = "1366 x 768";
            menu[2, 4] = "1280 x 720";
            menu[2, 5] = "800 x 600";
            menu[2, 6] = "\nzurück";
            #endregion

            #region controls

            menu[3, 0] = "Tastatur-Einstellungen";
            menu[3, 1] = "Gamepad-Einstellungen";
            menu[3, 2] = "\nzurück";

            #region controls submenu

            menu[31, 0] = "oben";
            menu[31, 1] = "unten";
            menu[31, 2] = "links";
            menu[31, 3] = "rechts";
            menu[31, 4] = "springen";
            menu[31, 5] = "Angriff";
            menu[31, 6] = "Dashboard";
            menu[31, 7] = "Artikel";
            menu[31, 8] = "bes.Fähigkeit";
            menu[31, 9] = "Waffenauswahl";
            menu[31, 10] = "Standard 1";
            menu[31, 11] = "Standard 2";
            menu[31, 12] = "\nzurück";

            menu[32, 0] = "zurück";


            #endregion

            #endregion

            #region sound
            menu[4, 0] = "Musik";
            menu[4, 1] = "\n\nsfx";
            menu[4, 2] = "\n\n\n\nzurück";
            #endregion

            #region Language

            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português (PT)";
            menu[41, 5]  = "Português (BR)";
            menu[41, 6]  = "Polski";
            menu[41, 7]  = "日本語";
            menu[41, 8]  = "Deutsch";
            menu[41, 9] = "Français";
            menu[41, 10] = "Italiano";
            menu[41, 11] = "\nzurück";

            #endregion
    
            #region ПОдтверждения

            #region Подтверждения выхода на карту
            menu[10,0] = "\n\nja";
            menu[10,1] = "\n\nnein";

            #endregion

            #region Подтверждения выхода в меню
            menu[11,0] = "\n\n\nja";
            menu[11,1] = "\n\n\nnein";

            #endregion

            confirm1 = @"Bist du sicher?";

            confirm2 = @"Bist du sicher?
alle nicht gespeicherten Fortschritte gehen verloren";
            #endregion
            
            #endregion
            break;
        case 9: //french
        #region ENG
        
            #region mainmenu
            menu[0, 0] = "options";
            menu[0, 1] = "\nreprendre";
            menu[0, 2] = "\nau village";
            menu[0, 3] = "\nquitter le menu principal";

            #endregion

             #region options
            menu[1, 0] = "graphiques";
            menu[1, 1] = "commandes";
            menu[1, 2] = "son";
            menu[1, 3] = "paramètres de langue";
            menu[1, 4] = "\nretour";
            #endregion

            #region graphics
            menu[2, 0] = "plein écran";
            menu[2, 1] = "1920 x 1080";
            menu[2, 2] = "1600 x 900";
            menu[2, 3] = "1366 x 768";
            menu[2, 4] = "1280 x 720";
            menu[2, 5] = "800 x 600";
            menu[2, 6] = "\nretour";
            #endregion

            #region controls

            menu[3, 0] = "paramètres du clavier";
            menu[3, 1] = "paramètres du gamepad";
            menu[3, 2] = "\nretour";

            #region controls submenu

            menu[31, 0] = "haut";
            menu[31, 1] = "bas";
            menu[31, 2] = "gauche";
            menu[31, 3] = "droite";
            menu[31, 4] = "sauter";
            menu[31, 5] = "attaquer";
            menu[31, 6] = "tableau de bord";
            menu[31, 7] = "objet";
            menu[31, 8] = "capacité spéc.";
            menu[31, 9] = "Sélection d'arme";
            menu[31, 10] = "défaut 1";
            menu[31, 11] = "défaut 2";
            menu[31, 12] = "\nretour";

            menu[32, 0] = "retour";


            #endregion

            #endregion

            #region sound
            menu[4, 0] = "musique";
            menu[4, 1] = "\n\nsfx";
            menu[4, 2] = "\n\n\n\nretour";
            #endregion

            #region Language

            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português (PT)";
            menu[41, 5]  = "Português (BR)";
            menu[41, 6]  = "Polski";            
            menu[41, 7]  = "日本語";
            menu[41, 8]  = "Deutsch";
            menu[41, 9]  = "Français";
            menu[41, 10] = "Italiano";
            menu[41, 11] = "\nretour";

            #endregion
    
            #region ПОдтверждения

            #region Подтверждения выхода на карту
            menu[10,0] = "\n\noui";
            menu[10,1] = "\n\nnon";

            #endregion

            #region Подтверждения выхода в меню
            menu[11,0] = "\n\n\noui";
            menu[11,1] = "\n\n\nnon";

            #endregion

            confirm1 = @"Vous êtes sûr ?";

            confirm2 = @"Vous êtes sûr ? 
toute progression non sauvegardée sera perdue";
            #endregion

#endregion
            break;
        case 10: // Italian
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
            menu[31, 9] = "Selezione arma";
            menu[31, 10] = "Predefinito 1";
            menu[31, 11] = "Predefinito 2";
            menu[31, 12] = "\nTorna";

            menu[32, 0] = "Torna";

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
            menu[41, 4]  = "Português (PT)";
            menu[41, 5]  = "Português (BR)";
            menu[41, 6]  = "Polski";
            menu[41, 7]  = "日本語";
            menu[41, 8]  = "Deutsch";
            menu[41, 9] = "Français";
            menu[41, 10] = "Italiano";
            menu[41, 11] = "\nTorna";

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
            //break;
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
menu[31, 9] = "weapon select";
menu[31, 10] = "default 1";
menu[31, 11] = "default 2";
menu[31, 12] = "back";

menu[32, 0] = "back";
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
menu[41, 4]  = "Português (PT)";
menu[41, 5]  = "Português (BR)";
menu[41, 6]  = "Polski";
menu[41, 7]  = "日本語";
menu[41, 8]  = "Deutsch";
menu[41, 9] = "Français";
menu[41, 10] = "Italiano";
menu[41, 11] = "\nback";

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
menu[31, 9] = "СМЕНА ОРУЖИЯ";
menu[31, 10] = "по умолчанию 1";
menu[31, 11] = "по умолчанию 2";
menu[31, 12] = "\nназад";

menu[32, 0] = "назад";
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
menu[41, 4]  = "Português (PT)";
menu[41, 5]  = "Português (BR)";
menu[41, 6]  = "Polski";
menu[41, 7]  = "日本語";
menu[41, 8]  = "Deutsch";
menu[41, 9] = "Français";
menu[41, 10] = "Italiano";
menu[41, 11] = "\nназад";

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
    #region ENG
    #region mainmenu
menu[0, 0] = "opciones";
menu[0, 1] = "\nreanudar";
menu[0, 2] = "\nsalir al menú principal";

#endregion

 #region options
            menu[1, 0] = "gráficos";
            menu[1, 1] = "controles";
            menu[1, 2] = "sonido";
            menu[1, 3] = "configuración de idioma";
            menu[1, 4] = "\natrás";
            #endregion

            #region graphics
            menu[2, 0] = "pantalla completa";
            menu[2, 1] = "1920 x 1080";
            menu[2, 2] = "1600 x 900";
            menu[2, 3] = "1366 x 768";
            menu[2, 4] = "1280 x 720";
            menu[2, 5] = "800 x 600";
            menu[2, 6] = "\natrás";
            #endregion

            #region controls

            menu[3, 0] = "configuración del teclado";
            menu[3, 1] = "configuración del gamepad";
            menu[3, 2] = "\natrás";

            #region controls submenu

            menu[31, 0] = "arriba";
            menu[31, 1] = "abajo";
            menu[31, 2] = "izquierda";
            menu[31, 3] = "derecha";
            menu[31, 4] = "saltar";
            menu[31, 5] = "ataque";
            menu[31, 6] = "dash";
            menu[31, 7] = "objeto";
            menu[31, 8] = "habilidad espec.";
            menu[31, 9] = "Selección de arma";
            menu[31, 10] = "por defecto 1";
            menu[31, 11] = "por defecto 2";
            menu[31, 12] = "\natrás";

            menu[32, 0] = "atrás";


            #endregion

            #endregion

            #region sound
            menu[4, 0] = "música";
            menu[4, 1] = "\n\nsfx";
            menu[4, 2] = "\n\n\n\natrás";
            #endregion

            #region Language

            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português (PT)";
            menu[41, 5]  = "Português (BR)";
            menu[41, 6]  = "Polski";            
            menu[41, 7]  = "日本語";
            menu[41, 8]  = "Deutsch";
            menu[41, 9] = "Français";
            menu[41, 10] = "Italiano";
            menu[41, 11] = "\natrás";

            #endregion

#region ПОдтверждения

#region Подтверждения выхода в меню
menu[10,0] = "\n\n\nsí";
menu[10,1] = "\n\n\nno";

#endregion

confirm2 = @"¿estás seguro?
todo el progreso no guardado se perderá";
#endregion
    #endregion
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
        menu[31, 9] = "择武器";
        menu[31, 10] = "缺省 1";
        menu[31, 11] = "缺省 2";
        menu[31, 12] = "\n回去";
        
        menu[32, 0] = "回去";
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
        menu[41, 4]  = "Português (PT)";
        menu[41, 5]  = "Português (BR)";
        menu[41, 6]  = "Polski";
        menu[41, 7]  = "日本語";
        menu[41, 8]  = "Deutsch";
        menu[41, 9] = "Français";
        menu[41, 10] = "Italiano";
        menu[41, 11] = "\n回去";

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
    #region ENG
    #region mainmenu
menu[0, 0] = "opções";
menu[0, 1] = "\nreanudar";
menu[0, 2] = "\nsalir al menú principal";

#endregion

#region options
            menu[1, 0] = "gráficos";
            menu[1, 1] = "controlos";
            menu[1, 2] = "som";
            menu[1, 3] = "definições de idioma";
            menu[1, 4] = "\nvoltar";
            #endregion

            #region graphics
            menu[2, 0] = "ecrã completo";
            menu[2, 1] = "1920 x 1080";
            menu[2, 2] = "1600 x 900";
            menu[2, 3] = "1366 x 768";
            menu[2, 4] = "1280 x 720";
            menu[2, 5] = "800 x 600";
            menu[2, 6] = "\nvoltar";
            #endregion

            #region controls

            menu[3, 0] = "definições do teclado";
            menu[3, 1] = "definições do gamepad";
            menu[3, 2] = "\nvoltar";

            #region controls submenu

            menu[31, 0] = "pra cima";
            menu[31, 1] = "para baixo";
            menu[31, 2] = "para à esquerda";
            menu[31, 3] = "para à direita";
            menu[31, 4] = "saltar";
            menu[31, 5] = "atacar";
            menu[31, 6] = "dash";
            menu[31, 7] = "item";
            menu[31, 8] = "habilidade esp.";
            menu[31, 9] = "Seleção de arma";
            menu[31, 10] = "padrão 1";
            menu[31, 11] = "padrão 2";
            menu[31, 12] = "\nvolta";

            menu[32, 0] = "volta";


            #endregion

            #endregion

            #region sound
            menu[4, 0] = "música";
            menu[4, 1] = "\n\nefeitos especiais";
            menu[4, 2] = "\n\n\n\nvolta";
            #endregion

            #region Language
            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português (PT)";
            menu[41, 5]  = "Português (BR)";
            menu[41, 6]  = "Polski";            
            menu[41, 7]  = "日本語";
            menu[41, 8]  = "Deutsch";
            menu[41, 9]  = "Français";
            menu[41, 10] = "Italiano";
            menu[41, 11] = "\nvoltar";

            #endregion

#region ПОдтверждения

#region Подтверждения выхода в меню
menu[10,0] = "\n\n\nsim";
menu[10,1] = "\n\n\nnão";

#endregion

confirm2 = @"Tens a certeza? 
todo os progresso não guardado será perdido";
#endregion
    #endregion
        break;
    case 5: //brazil
    #region ENG
    #region mainmenu
menu[0, 0] = "opções";
menu[0, 1] = "\nretomar";
menu[0, 2] = "\nsair para o menu principal";

#endregion

 #region options
            menu[1, 0] = "gráficos";
            menu[1, 1] = "controles";
            menu[1, 2] = "sons";
            menu[1, 3] = "configurações de idioma";
            menu[1, 4] = "\nvoltar";
            #endregion

            #region graphics
            menu[2, 0] = "tela cheia";
            menu[2, 1] = "1920 x 1080";
            menu[2, 2] = "1600 x 900";
            menu[2, 3] = "1366 x 768";
            menu[2, 4] = "1280 x 720";
            menu[2, 5] = "800 x 600";
            menu[2, 6] = "\nvoltar";
            #endregion

            #region controls

            menu[3, 0] = "configurações do teclado";
            menu[3, 1] = "configurações do gamepad";
            menu[3, 2] = "\nvoltar";

            #region controls submenu

            menu[31, 0] = "pra cima";
            menu[31, 1] = "para baixo";
            menu[31, 2] = "para à esquerda";
            menu[31, 3] = "para à direita";
            menu[31, 4] = "pular";
            menu[31, 5] = "atacar";
            menu[31, 6] = "dash";
            menu[31, 7] = "item";
            menu[31, 8] = "habilidade esp.";
            menu[31, 9] = "Seleção de arma";
            menu[31, 10] = "padrão 1";
            menu[31, 11] = "padrão 2";
            menu[31, 12] = "\nvoltar";

            menu[32, 0] = "voltar";


            #endregion

            #endregion

            #region sound
            menu[4, 0] = "música";
            menu[4, 1] = "\n\nefeitos especiais";
            menu[4, 2] = "\n\n\n\nvoltar";
            #endregion

            #region Language

            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português (PT)";
            menu[41, 5]  = "Português (BR)";
            menu[41, 6]  = "Polski";            
            menu[41, 7]  = "日本語";
            menu[41, 8]  = "Deutsch";
            menu[41, 9]  = "Français";
            menu[41, 10] = "Italiano";
            menu[41, 11] = "\nvoltar";

            #endregion

#region ПОдтверждения

#region Подтверждения выхода в меню
menu[10,0] = "\n\n\nsim";
menu[10,1] = "\n\n\nnão";

#endregion

confirm2 = @"Tem certeza? 
todo o progresso não salvo será perdido";
#endregion
    #endregion
        break;
    case 6: //polish
    #region ENG
    #region mainmenu
menu[0, 0] = "Opcje";
menu[0, 1] = "\nWznów";
menu[0, 2] = "\nWyjście do menu głównego";

#endregion

#region options
menu[1, 0] = "Grafika";
menu[1, 1] = "Sterowanie";
menu[1, 2] = "Dziwięk";
menu[1, 3] = "Ustawienia języka";
menu[1, 4] = "\nPowrót";
#endregion

#region graphics
menu[2, 0] = "Pełny ekran";
menu[2, 1] = "1920 x 1080";
menu[2, 2] = "1600 x 900";
menu[2, 3] = "1366 x 768";
menu[2, 4] = "1280 x 720";
menu[2, 5] = "800 x 600";
menu[2, 6] = "\nPowrót";
#endregion

#region controls

menu[3, 0] =  "Ustawienia klawiatury";
menu[3, 1] =  "Ustawienia gamepada";
menu[3, 2] =  "\nPowrót";

#region controls submenu

menu[31, 0] = "Gór";
menu[31, 1] = "Dół";
menu[31, 2] = "Lewo";
menu[31, 3] = "Prawo";
menu[31, 4] = "Skok";
menu[31, 5] = "Atak";
menu[31, 6] = "Przeskok";
menu[31, 7] = "przedmiot";
menu[31, 8] = "umiejętność spec.";
menu[31, 9] = "Wybór broni";
menu[31, 10] = "domyślny 1";
menu[31, 11] = "domyślny 2";
menu[31, 12] = "\nPowrót";
              
menu[32, 0] = "Powrót";
#endregion

#endregion

#region sound
menu[4, 0] = "muzyka";
menu[4, 1] = "\n\nDzwięki";
menu[4, 2] = "\n\n\n\nPowrót";
#endregion

#region Language

menu[41, 0]  = "english";
menu[41, 1]  = "русский";
menu[41, 2]  = "Español";
menu[41, 3]  = "中国";
menu[41, 4]  = "Português (PT)";
menu[41, 5]  = "Português (BR)";
menu[41, 6]  = "Polski";
menu[41, 7]  = "日本語";
menu[41, 8]  = "Deutsch";
menu[41, 9] = "Français";
menu[41, 10] = "Italiano";
menu[41, 11] = "\nPowrót";

#endregion

#region ПОдтверждения

#region Подтверждения выхода в меню
menu[10,0] = "\n\n\nTak";
menu[10,1] = "\n\n\nNie";

#endregion

confirm2 = @"Czy jesteś pewien?
Stracisz cały nie zapisany postęp.";
#endregion
    #endregion
        break;
    case 7: //japanese
    #region ENG
    #region mainmenu
menu[0, 0] = "オプション";
menu[0, 1] = "\n再開";
menu[0, 2] = "\nメインメニューに戻る";

#endregion

#region options
            menu[1, 0] = "グラフィック";
            menu[1, 1] = "コントロール";
            menu[1, 2] = "サウンド";
            menu[1, 3] = "言語設定";
            menu[1, 4] = "\nバック";
            #endregion

            #region graphics
            menu[2, 0] = "フルスクリーン";
            menu[2, 1] = "1920 x 1080";
            menu[2, 2] = "1600 x 900";
            menu[2, 3] = "1366 x 768";
            menu[2, 4] = "1280 x 720";
            menu[2, 5] = "800 x 600";
            menu[2, 6] = "\nバック";
            #endregion

            #region controls

            menu[3, 0] = "キーボード設定";
            menu[3, 1] = "ゲームパッドの設定";
            menu[3, 2] = "\nバック";

            #region controls submenu

            menu[31, 0] = "上";
            menu[31, 1] = "下";
            menu[31, 2] = "左";
            menu[31, 3] = "右";
            menu[31, 4] = "ジャンプ";
            menu[31, 5] = "攻撃";
            menu[31, 6] = "ダッシュ";
            menu[31, 7] = "アイテム";
            menu[31, 8] = "スペック能力";
            menu[31, 9] = "武器選択";
            menu[31, 10] = "デフォルト1";
            menu[31, 11] = "デフォルト2";
            menu[31, 12] = "\nバック";

            menu[32, 0] = "バック";


            #endregion

            #endregion

            #region sound
            menu[4, 0] = "音楽";
            menu[4, 1] = "\n\nsfx";
            menu[4, 2] = "\n\n\n\nバック";
            #endregion

            #region Language

            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português (PT)";
            menu[41, 5]  = "Português (BR)";
            menu[41, 6]  = "Polski";            
            menu[41, 7]  = "日本語";
            menu[41, 8]  = "Deutsch";
            menu[41, 9]  = "Français";
            menu[41, 10] = "Italiano";
            menu[41, 11] = "\nバック";

            #endregion

#region ПОдтверждения

#region Подтверждения выхода в меню
menu[10,0] = "\n\n\nはい";
menu[10,1] = "\n\n\nいいえ";

#endregion

confirm2 = @"本当によろしいですか？
セーブされていない進行状況はすべて失われます";
#endregion
    #endregion
        break;
    case 8: //deutch
    #region ENG
    #region mainmenu
menu[0, 0] = "Optionen";
menu[0, 1] = "\nfortsetzen";
menu[0, 2] = "\nzurück zum Hauptmenü";

#endregion

 #region options
            menu[1, 0] = "Grafik";
            menu[1, 1] = "Steuerung";
            menu[1, 2] = "Ton";
            menu[1, 3] = "Spracheinstellungen";
            menu[1, 4] = "\nzurück";
            #endregion

            #region graphics
            menu[2, 0] = "Vollbild";
            menu[2, 1] = "1920 x 1080";
            menu[2, 2] = "1600 x 900";
            menu[2, 3] = "1366 x 768";
            menu[2, 4] = "1280 x 720";
            menu[2, 5] = "800 x 600";
            menu[2, 6] = "\nzurück";
            #endregion

            #region controls

            menu[3, 0] = "Tastatur-Einstellungen";
            menu[3, 1] = "Gamepad-Einstellungen";
            menu[3, 2] = "\nzurück";

            #region controls submenu

            menu[31, 0] = "oben";
            menu[31, 1] = "unten";
            menu[31, 2] = "links";
            menu[31, 3] = "rechts";
            menu[31, 4] = "springen";
            menu[31, 5] = "Angriff";
            menu[31, 6] = "Dashboard";
            menu[31, 7] = "Artikel";
            menu[31, 8] = "bes.Fähigkeit";
            menu[31, 9] = "Waffenauswahl";
            menu[31, 10] = "Standard 1";
            menu[31, 11] = "Standard 2";
            menu[31, 12] = "\nzurück";

            menu[32, 0] = "zurück";


            #endregion

            #endregion

            #region sound
            menu[4, 0] = "Musik";
            menu[4, 1] = "\n\nsfx";
            menu[4, 2] = "\n\n\n\nzurück";
            #endregion

            #region Language

            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português (PT)";
            menu[41, 5]  = "Português (BR)";
            menu[41, 6]  = "Polski";
            menu[41, 7]  = "日本語";
            menu[41, 8]  = "Deutsch";
            menu[41, 9] = "Français";
            menu[41, 10] = "Italiano";
            menu[41, 11] = "\nzurück";

            #endregion

#region ПОдтверждения

#region Подтверждения выхода в меню
menu[10,0] = "\n\n\nja";
menu[10,1] = "\n\n\nnein";

#endregion

confirm2 = @"Bist du sicher?
alle nicht gespeicherten Fortschritte gehen verloren";
#endregion
    #endregion
        break;
    case 9: //french
    #region ENG
    #region mainmenu
menu[0, 0] = "options";
menu[0, 1] = "\nreprendre";
menu[0, 2] = "\nquitter le menu principal";

#endregion

#region options
            menu[1, 0] = "graphiques";
            menu[1, 1] = "commandes";
            menu[1, 2] = "son";
            menu[1, 3] = "paramètres de langue";
            menu[1, 4] = "\nretour";
            #endregion

            #region graphics
            menu[2, 0] = "plein écran";
            menu[2, 1] = "1920 x 1080";
            menu[2, 2] = "1600 x 900";
            menu[2, 3] = "1366 x 768";
            menu[2, 4] = "1280 x 720";
            menu[2, 5] = "800 x 600";
            menu[2, 6] = "\nretour";
            #endregion

            #region controls

            menu[3, 0] = "paramètres du clavier";
            menu[3, 1] = "paramètres du gamepad";
            menu[3, 2] = "\nretour";

            #region controls submenu

            menu[31, 0] = "haut";
            menu[31, 1] = "bas";
            menu[31, 2] = "gauche";
            menu[31, 3] = "droite";
            menu[31, 4] = "sauter";
            menu[31, 5] = "attaquer";
            menu[31, 6] = "tableau de bord";
            menu[31, 7] = "objet";
            menu[31, 8] = "capacité spéc.";
            menu[31, 9] = "Sélection d'arme";
            menu[31, 10] = "défaut 1";
            menu[31, 11] = "défaut 2";
            menu[31, 12] = "\nretour";

            menu[32, 0] = "retour";


            #endregion

            #endregion

            #region sound
            menu[4, 0] = "musique";
            menu[4, 1] = "\n\nsfx";
            menu[4, 2] = "\n\n\n\nretour";
            #endregion

            #region Language

            menu[41, 0]  = "english";
            menu[41, 1]  = "русский";
            menu[41, 2]  = "Español";
            menu[41, 3]  = "中国";
            menu[41, 4]  = "Português (PT)";
            menu[41, 5]  = "Português (BR)";
            menu[41, 6]  = "Polski";            
            menu[41, 7]  = "日本語";
            menu[41, 8]  = "Deutsch";
            menu[41, 9]  = "Français";
            menu[41, 10] = "Italiano";
            menu[41, 11] = "\nretour";

            #endregion

#region ПОдтверждения

#region Подтверждения выхода в меню
menu[10,0] = "\n\n\noui";
menu[10,1] = "\n\n\nnon";

#endregion

confirm2 = @"Vous êtes sûr ? 
toute progression non sauvegardée sera perdue";
#endregion
    #endregion
        break;
    case 10: // Italian
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
menu[31, 9] =   "Selezione arma";
menu[31, 10] =  "Predefinito 1";
menu[31, 11] =  "Predefinito 2";
menu[31, 12] =  "\nTorna";

menu[32, 0] = "Torna";
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
menu[41, 4]  = "Português (PT)";
menu[41, 5]  = "Português (BR)";
menu[41, 6]  = "Polski";
menu[41, 7]  = "日本語";
menu[41, 8]  = "Deutsch";
menu[41, 9] = "Français";
menu[41, 10] = "Italiano";
menu[41, 11] = "\nTorna";

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
  