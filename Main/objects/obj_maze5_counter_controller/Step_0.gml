/// @description Insert description here
// You can write your code in this editor
if (StartEvent = 0) {
    //Выдача призов
}
if (StartEvent = 1) {
    // Выдача призов
    t++;
    if t = 50
    {
        
        if CurrentScore >= 200 // приз 1
        {
            if prize1 = 0
            {
                fnc_snd_play_over(snd_secrets_gain);
                prize1 = 1;
                obj_maze5_prizegift.prize1 = 1;
                // Изменить картнку выдачи призов
            }
        }
        
        if CurrentScore >= 250 // Приз 2
        {
            if prize2 = 0
            {
                fnc_snd_play_over(snd_secrets_gain);
                prize2 = 1;
                obj_maze5_prizegift.prize2 = 1;
                // Изменить картнку выдачи призов
            }   
        }
        
        if CurrentScore = 300 // Приз 3
        {
            if prize3 = 0
            {
                fnc_snd_play_over(snd_secrets_gain);
                prize3 = 1;
                obj_maze5_prizegift.prize3 = 1;
                // Изменить картнку выдачи призов
            }   
        }
        
        
        
        t = 0;
        CurrentScore = 0;
        if CurrentScore != 300 obj_maze5_trigger.isActive = 0;
        StartEvent = 0;
    }
    
}
	
	
rm = room_get_name(room)
#region Комната
if (rm = "S1_r17" || rm = "S1_r18") {
} else instance_destroy();
#endregion

