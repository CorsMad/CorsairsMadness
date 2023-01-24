// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function fnc_lng_tip_bluesphere()
{
    switch(global.language)
{
    case 0: //English   
    #region
        text = "Jump while on the blue sphere"
    #endregion
        break;
    case 1: //russian
    #region
        text = "Прыгните, находясь на синей сфере"
    #endregion
        break;
    case 2: //spanish
        break;
    case 3: //chinese
    #region
        text = "在蓝色球体上跳跃"
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
        text = "Salta mentre sulla sfera blu"
        #endregion
        break;
}   
}

function fnc_lng_tip_green_lantern(){
    switch(global.language)
    {
        case 0: //English
            #region eng

            text = "Hit green lantern"

            #endregion
            break;
        case 1: //russian
            #region rus

            text = "ударьте зеленый фонарь"

            #endregion
            break;
        case 2: //spanish
            break;
        case 3: //chinese
        #region eng

            text = "罢工绿灯笼"

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

            text = "Colpisci lanterna verde"

            #endregion
            break;
    } 
}
    
function fnc_lng_tip_pink_lantern(){
    switch(global.language)
    {
        case 0: //English
            #region eng

            text = "Hit pink lantern with dash"

            #endregion
            break;
        case 1: //russian
            #region rus

            text = "попадите по розовому фонарю рывком"

            #endregion
            break;
        case 2: //spanish
            break;
        case 3: //chinese
        #region eng

            text = "Hit pink lantern with dash"

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
            #region eng

            text = "Hit pink lantern with dash"

            #endregion
            break;
    } 
}    
    
function fnc_lng_tip_downstrike()
{
    switch(global.language)
    {
        case 0: //English 
            text = "press"
            text2 = "while in air to strike down";
            break;
        case 1: //russian
            text = "нажмите"
            text2 = "в воздухе,чтобы ударить вниз";
            break;
        case 2: //spanish
            break;
        case 3: //chinese
            text = "在空中按"
            text2 = "击落";
            break;
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
            text = "Premi"
            text2 = "mentre sei in aria per abbattere";
            break;
    }   
}

function fnc_lng_tip_dash()
{
    switch(global.language)
    {
        case 0: //English    
            text1 = "press";
            text = "to dash";
            break;
        case 1: //russian
            text1 = "нажмите";
            text = "для рывка";
            break;
        case 2: //spanish
            break;
        case 3: //chinese
            text1 = "按";
            text = "突";
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
            text1 = "Premi";
            text = "per lanciarsi";
            break;
    }   
}

function fnc_lng_tip_red_pad()
{
    switch(global.language)
    {
        case 0: //English
            text = "Dash while on a red sphere";
            break;
        case 1: //russian
            text = "Нажмите рывок, находясь на красной сфере";
            break;
        case 2: //spanish
            break;
        case 3: //chinese
            text = "在红球体上突";
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
            text = "Lanciati mentre sulla sfera rossa";
            break;
    }
}

function fnc_lng_tip_possessed(){
   switch(global.language)
    {
        case 0: //English  
            #region  ENG text
            confirm = "confirm";
            confirmy = "yes";
            confirmn = "no";

            text1 = @"Every fourth successful strike against an enemy 
other than a red one will be special.";
            text2 = @"Combine different strikes to improve your rating.";
            text3 = @"The higher the rating, the more dark 
essence will be dropped from defeated enemies.";

            textair = "in the air";
            textground = "on the ground";
            #endregion
            break;
        case 1: //russian
            #region  кг text
            text1 = @"каждый четвертый успешный удар по врагу 
кроме красных будет специальным.";
            text2 = @"Комбинируйте разные атаки чтобы улучшить рейтинг.";
            text3 = @"чем выше рейтнг, тем больше темной 
эссенции будет выпадать из врагов.";

            textair = "в воздухе";
            textground = "на земле";
            #endregion           
            break;
        case 2: //spanish
            break;
        case 3: //chinese
        #region  CN text
            confirm = "证实";
            confirmy = "对";
            confirmn = "no";

            text1 = @"对除红色敌人以外的敌人的每四次成功打击都是特殊的."; 
            text2 = @"结合不同的罢工以提高您的评级.";
            text3 = @"等级越高, 被击败的敌人掉落的黑暗精华就越多.";

            textair = "在空中";
            textground = "在地面上";
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
            confirm = "Conferma";
            confirmy = "Sì";
            confirmn = "No";

            text1 = @"Ogni quarto colpo andato a segno contro un nemico
diverso da quello rosso sarà speciale.";
            text2 = @"Combina diversi colpi per migliorare la tua valutazione.";
            text3 = @"Più alto è il punteggio, più essenza oscura
verrà rilasciata dai nemici sconfitti.";

            textair = "nell'aria ";
            textground = "a terra";
            #endregion
            break;
    }    
}    
    
function fnc_lng_tip_hook_hand()
{
    switch(global.language)
    {
        case 0: //English    
            text1 = "press";
            text = "to Use your hook-hand";
            break;
        case 1: //russian
            text1 = "нажмите";
            text = "чтобы использовать рукохват";
            break;
        case 2: //spanish
            break;
        case 3: //chinese
            text1 = "按";
            text = "使用你的钩手";
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
            text1 = "premi";
            text = "per usare la mano uncinata";
            break;
    }   
}    