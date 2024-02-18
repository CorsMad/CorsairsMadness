t++;
if t = 50
{
    
    switch(global.PlayerTransition)
    {
        case 0: 
        #region Джунгли
            global.TargetX      = 32; 
            global.TargetY      = 240;
            global.TargetRoom   = Village_jungle;
            var i = instance_create_depth(16,16,0,obj_Player);
            i.DashEnabled = 1;
            i.state = 0;
			if global.dia_jungleComt < 1 i.specabilnumber = 1; else i.specabilnumber = 0;            
            i.HookEnabled = 0;      
            instance_create_depth(16,16,101,obj_room_transition_to_loading);  
        #endregion
        break;
        case 0.05:
            global.TargetX      = 112; 
            global.TargetY      = 240;
            global.TargetRoom   = Village_jungle_merchant;
            var i = instance_create_depth(16,16,0,obj_Player);
            i.DashEnabled = 1;
            i.state = 0;
            if global.dia_jungleComt < 1 i.specabilnumber = 1; else i.specabilnumber = 0;   
            i.HookEnabled = 0;      
            instance_create_depth(16,16,101,obj_room_transition_to_loading);  
            break;
        case 0.1:
        #region карта джугнлей
            room_goto(GlobalMapPrologueJungle);
        #endregion
        break;
        case 1: 
        #region Пустыня
            global.TargetX      = 32; 
            global.TargetY      = 240;
            global.TargetRoom   = Village_desert;
            var i = instance_create_depth(16,16,0,obj_Player);
            i.DashEnabled = 1;
            i.state = 0;
			if global.dia_desertComt < 1 i.specabilnumber = 4; else i.specabilnumber = 0;   
            i.HookEnabled = 1;      
            instance_create_depth(16,16,101,obj_room_transition_to_loading);  
        #endregion
        break;
        case 1.05: 
        #region Пустыня
            global.TargetX      = 112; 
            global.TargetY      = 240;
            global.TargetRoom   = Village_desert_store;
            var i = instance_create_depth(16,16,0,obj_Player);
            i.DashEnabled = 1;
            i.state = 0;
            if global.dia_desertComt < 1 i.specabilnumber = 4; else i.specabilnumber = 0;   
            i.HookEnabled = 1;      
            instance_create_depth(16,16,101,obj_room_transition_to_loading);  
        #endregion
        break;
        case 1.1:
        #region карта пустыня
            room_goto(GlobalMapPrologueDesert);
        #endregion
        break;
        case 2: 
        #region Снег
            global.TargetX      = 32; 
            global.TargetY      = 240;
            global.TargetRoom   = Village_snow;
            var i = instance_create_depth(16,16,0,obj_Player);
            i.DashEnabled = 1;
            i.state = 0;
			if global.dia_snowComt < 1 i.specabilnumber = 5; else i.specabilnumber = 0;   
            i.HookEnabled = 1;      
            instance_create_depth(16,16,101,obj_room_transition_to_loading);  
        #endregion
        break;
        case 2.05: 
        #region Снег
            global.TargetX      = 112; 
            global.TargetY      = 240;
            global.TargetRoom   = Village_snow_store;
            var i = instance_create_depth(16,16,0,obj_Player);
            i.DashEnabled = 1;
            i.state = 0;
            if global.dia_snowComt < 1 i.specabilnumber = 5; else i.specabilnumber = 0;   
            i.HookEnabled = 1;      
            instance_create_depth(16,16,101,obj_room_transition_to_loading);  
        #endregion
        break;
        case 2.1:
        #region карта снег
            room_goto(GlobalMapPrologueSnow);
        #endregion
        break;
        case 3: 
        #region Шадов
            global.TargetX      = 32; 
            global.TargetY      = 240;
            global.TargetRoom   = Village_shadow;
            var i = instance_create_depth(16,16,0,obj_Player);
            i.DashEnabled = 1;
            i.state = 0;
			if global.dia_shadowComt < 1 i.specabilnumber = 2; else i.specabilnumber = 0;               
            i.HookEnabled = 1;      
            instance_create_depth(16,16,101,obj_room_transition_to_loading);  
        #endregion
        break;
        case 3.05: 
        #region Шадов
            global.TargetX      = 112; 
            global.TargetY      = 240;
            global.TargetRoom   = Village_shadow_store;
            var i = instance_create_depth(16,16,0,obj_Player);
            i.DashEnabled = 1;
            i.state = 0;
            if global.dia_shadowComt < 1 i.specabilnumber = 2; else i.specabilnumber = 0;   
            i.HookEnabled = 1;      
            instance_create_depth(16,16,101,obj_room_transition_to_loading);  
        #endregion
        break;
        case 3.1:
        #region карта шадов
            room_goto(GlobalMapPrologueShadow);
        #endregion
        break;
        case 4: 
        #region Лава
            global.TargetX      = 32; 
            global.TargetY      = 240;
            global.TargetRoom   = Village_lava;
            var i = instance_create_depth(16,16,0,obj_Player);
            i.DashEnabled = 1;
            i.state = 0;
			if global.dia_lavaComt < 1 i.specabilnumber = 3; else i.specabilnumber = 0;               
            i.HookEnabled = 1;      
            instance_create_depth(16,16,101,obj_room_transition_to_loading);  
        #endregion
        break;
        case 4.05: 
        #region Лава
            global.TargetX      = 214; 
            global.TargetY      = 240;
            global.TargetRoom   = Village_lava_hall_store;
            var i = instance_create_depth(16,16,0,obj_Player);
            i.DashEnabled = 1;
            i.state = 0;
            if global.dia_lavaComt < 1 i.specabilnumber = 3; else i.specabilnumber = 0;   
            i.HookEnabled = 1;      
            instance_create_depth(16,16,101,obj_room_transition_to_loading);  
        #endregion
        break;
        case 4.1:
        #region карта шадов
            room_goto(GlobalMapPrologueLava);
        #endregion
        break;
        case 5: 
        #region ОстровСмерти
            room_goto(GlobalMapLast);
        #endregion
        break;
        
        case 10:
            #region Глобальная карта
            room_goto(GlobalMap);
            #endregion
        break;
    }
   
    
    
    
    
    
    
}