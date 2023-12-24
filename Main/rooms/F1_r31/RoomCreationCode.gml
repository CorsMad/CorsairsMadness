
if global.Cutscene_f1_r33 = 1 {
    fnc_msc_start_checkpoint(msc_jp1);   
} else {
      obj_wall_trigger_close1.isClosed = 1; 
      obj_wall_trigger_close1.imspd = 1; 
      fnc_msc_start_checkpoint(msc_jp1_prepurch); 
}


