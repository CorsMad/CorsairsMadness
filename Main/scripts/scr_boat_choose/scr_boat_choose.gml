function scr_boat_choose(_select,_state1,_room1,_state2,_room2){
    if state = _select && (key_jump_press || key_attack_press) {
        if skip_t < skip_t_max skip_t+=1.5;
    	skip = 1; 
    } else {
    	skip_t=0;
    	skip = 0;
    }

    switch(skip) {
    	case 0: if alpha_skip >0 alpha_skip-=0.2;
    		break;
    	case 1: if alpha_skip <1 alpha_skip+=0.2;
    		break;
    }

    if skip_t >= skip_t_max {
        switch(state){
            case 0:
                obj_Player_boat.state = _state1;
                obj_Player_boat.TargetRoom = _room1; 
                break;
            case 1:
                obj_Player_boat.state = _state2;
                obj_Player_boat.TargetRoom = _room2; 
                break;
        }   
        fnc_snd_play_over(snd_menu_accept);
    	instance_destroy();           
    }
}

function scr_cannon_choose(_cannon_name,_state,_targetroom1,_targetx1,_targety1,_targetroom2,_targetx2,_targety2){
    if state = _state && (key_jump_press || key_attack_press) {
        if skip_t < skip_t_max skip_t+=1.5;
    	skip = 1; 
    } else {
    	skip_t=0;
    	skip = 0;
    }

    switch(skip) {
    	case 0: if alpha_skip >0 alpha_skip-=0.2;
    		break;
    	case 1: if alpha_skip <1 alpha_skip+=0.2;
    		break;
    }

    if skip_t >= skip_t_max {
        switch(state){
            case 0:
                _cannon_name.pjump = 1;
                _cannon_name.TargetRoom = _targetroom1;
                _cannon_name.TargetX = _targetx1;
                _cannon_name.TargetY = _targety1;
                fnc_achiev_get("ACH29");
                break;
            case 1:
                _cannon_name.pjump = 1;
                _cannon_name.TargetRoom = _targetroom2;
                _cannon_name.TargetX = _targetx2;
                _cannon_name.TargetY = _targety2;
                fnc_achiev_get("ACH29"); 
                break;
        }   
        fnc_snd_play_over(snd_menu_accept);
    	instance_destroy();           
    }
}