// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_secrets_chest_maze(){
    
#region Jungle

    /* 1 УРОВЕНЬ */
    #region Сундуки
    global.chest_j1_r3 = 1;
    global.chest_j1_r7 = 1;
    global.chest_j1_r9 = 1;
    global.chest_j1_r14 = 1;
    #endregion
    
    #region Монеты
    global.secrets_j1_r5 = 0;
    global.secrets_j1_s1 = 0;
    global.secrets_j1_r16 = 0;
    #endregion
    
    #region Головоломка
    global.maze_trigger1_j1_r13 = 0;
    global.maze_trigger2_j1_r13 = 0;
    global.maze_trigger3_j1_r13 = 0;
    global.maze_trigger4_j1_r13 = 0;
    
    #endregion

    /* 2 УРОВЕНЬ */

    #region Сундуки
    global.chest_j2_r1 = 1;
    global.chest_j2_r3 = 1;
    global.chest_j2b_r4 = 1;
    global.chest_J2p_r3 = 1;
    #endregion
    
    #region Монеты
    global.secrets_j2_s1 = 0;
    global.secrets_j2p_r4 = 0;
    global.secrets_J2b_s1 = 0;
    #endregion
    
    #region Проходы
    global.secretpass_j2_r4 = 1;
    global.secretpass_j2b_r3 = 1;
    
    #endregion
    
    
    /* ENDURANCE JUNGLE */

    #region  Монета
    global.secrets_j2_endurance = 0;
    #endregion

#endregion

#region Desert

 /* 1 УРОВЕНЬ */
    #region Сундуки
    global.chest_d1_r2 = 1;
    global.chest_d1_r6 = 1;
    global.chest_d1_r10 = 1;
    global.chest_d1_r15 = 1;
    #endregion
    
    #region Монеты
    global.secrets_d1_s1 = 0;
    global.secrets_d1_s2 = 0;
    global.secrets_d1_s3 = 0;
    #endregion
    
    #region Головоломка
    
    #endregion

#endregion

}