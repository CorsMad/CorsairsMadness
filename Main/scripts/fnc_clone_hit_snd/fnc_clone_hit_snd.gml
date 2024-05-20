// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_clone_hit_snd_1(){
	var _pitch;
	switch (hit_stored) {
		case 0: _pitch =  0.5;break;	
		case 1: _pitch =  0.55;break;	
		case 2: _pitch =  0.6;break;	
		case 3: _pitch =  0.65;break;	
		case 4: _pitch =  0.7;break;	
		case 5: _pitch =  0.75;break;	
		case 6: _pitch =  0.8;break;	
		case 7: _pitch =  0.85;break;	
		case 8: _pitch =  0.9;break;	
		case 9: _pitch =  0.95;break;	
		case 10: _pitch = 1.0;break;	
		case 11: _pitch = 1.05;break;	
		case 12: _pitch = 1.10;break;	
		case 13: _pitch = 1.15;break;
		case 14: _pitch = 1.20;break;
		case 15: _pitch = 1.25;break;
		default: _pitch = 1.5;break;
	}
	audio_sound_pitch(audio_play_sound(snd_clone1,0,false,),_pitch)
}
