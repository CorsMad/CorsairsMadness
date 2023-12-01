fnc_msc_start_checkpoint(msc_village_lava);
global.PlayerTransition = 4;
scr_save_progress();

if global.completed_PL2 = 0 {
    //передние
    var lay_id = layer_get_id("Backgrounds_9");
    var back_id = layer_background_get_id(lay_id);
    layer_background_alpha(back_id, 0.2);

    //задние
    var lay_id4 = layer_get_id("Backgrounds_12");
    var back_id4 = layer_background_get_id(lay_id4);
    layer_background_alpha(back_id4, 0.3);
} else {
    //передние
    var lay_id = layer_get_id("Backgrounds_9");
    var back_id = layer_background_get_id(lay_id);
    layer_background_alpha(back_id, 0);
    
    //задние
    var lay_id4 = layer_get_id("Backgrounds_12");
    var back_id4 = layer_background_get_id(lay_id4);
    layer_background_alpha(back_id4, 0);   
}




