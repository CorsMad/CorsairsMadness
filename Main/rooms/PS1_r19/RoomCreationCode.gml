if obj_music_controller.musicId = msc_jp1_purch{
	fnc_msc_stop_play();
	fnc_msc_start_checkpoint(msc_jp1_prepurch);
} else fnc_msc_start_checkpoint(msc_jp1_prepurch); 

