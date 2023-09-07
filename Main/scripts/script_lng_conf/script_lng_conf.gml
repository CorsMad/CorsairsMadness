// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function script_lng_conf(){

	switch(global.language)
    {
        case 0: //English
            #region eng
			text = "Travel to the island?"
            yes = "yes";
			no = "no"

            #endregion
            break;
        case 1: //russian
            #region rus

            text = "ударьте зеленый фонарь"

            #endregion
            break;
        case 2: //spanish
            #region eng

            text = "golpea la linterna verde"

            #endregion
            break;
        case 3: //chinese
            #region eng

            text = "罢工绿灯笼"

            #endregion
            break;
        case 4: //portug
            #region eng

            text = "bate na lanterna verde"

            #endregion
            break;
        case 5: //brazil
            #region eng

            text = "bata na lanterna verde"

            #endregion
            break;
        case 6: //polish
            #region eng

            text = "Uderz w Zieloną Latarnię."

            #endregion
            break;
        case 7: //japanese
            #region eng

            text = "グリーンランタンを攻撃"

            #endregion
            break;
        case 8: //deutch
            #region eng

            text = "Triff die grüne Laterne"

            #endregion
            break;
        case 9: //french
            #region eng

            text = "frappez la lanterne verte"

            #endregion
            break;
        case 10: // Italian
            #region eng

            text = "Colpisci lanterna verde"

            #endregion
            break;
    } 	
}