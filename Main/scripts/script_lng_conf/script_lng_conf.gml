// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function script_lng_conf(){

	switch(global.language)
    {
        case 0: //English
            #region eng
			text = "Travel to the island?"
            yes = "yes";
			no = "no";
            text_onisldn = "Confirm?"

            #endregion
            break;
        case 1: //russian
            #region rus

            text = "Отплыть на остров?"
            yes = "да";
			no = "нет";
            text_onisldn = "подтвердить?"

            #endregion
            break;
        case 2: //spanish
            #region eng

            text = "¿Viajar a la isla?"
            yes = "sí";
			no = "no";
            text_onisldn = "Confirmar?"

            #endregion
            break;
        case 3: //chinese
            #region eng
            text = "去岛上旅游？"
            yes = "是";
			no = "否";
            text_onisldn = "确认?"

            #endregion
            break;
        case 4: //portug
            #region eng
            text = "Viajar para a ilha?"
            yes = "sim";
			no = "não";
            text_onisldn = "Confirmar?"

            #endregion
            break;
        case 5: //brazil
            #region eng

            text = "Viajar para a ilha?"
            yes = "sim";
			no = "não";
            text_onisldn = "Confirmar?"

            #endregion
            break;
        case 6: //polish
            #region eng
            text = "Podróż na wyspę?"
            yes = "tak";
			no = "nie";
            text_onisldn = "Potwierdzić?"

            #endregion
            break;
        case 7: //japanese
            #region eng

            text = "島への旅行？"
            yes = "イエス";
			no = "いいえ";
            text_onisldn = "確認する?"

            #endregion
            break;
        case 8: //deutch
            #region eng

            text = "Reisen Sie auf die Insel?"
            yes = "ja";
			no = "nein";
            text_onisldn = "Bestätigen Sie?"

            #endregion
            break;
        case 9: //french
            #region eng

            text = "Voyage sur l'île?"
            yes = "Oui";
			no = "non";
            text_onisldn = "Confirmer?"

            #endregion
            break;
        case 10: // Italian
            #region eng

            text = "Viaggio sull'isola?"
            yes = "sì";
			no = "no";
            text_onisldn = "Confermare?"

            #endregion
            break;
    } 	
}