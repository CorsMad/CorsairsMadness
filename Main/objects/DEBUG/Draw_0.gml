/// @description Insert description here
// You can write your code in this editor
   
if instance_exists(obj_map_controller)
{
    draw_set_color(c_black);
    draw_text(16,16,"Main" + string(obj_map_controller.GlobalMapAlpha));   
    draw_text(16,26,"Jungle" + string(obj_map_controller.island1JungleAlpha));   
    draw_text(16,36,"Desert" + string(obj_map_controller.island1DesertAlpha));   
    draw_text(16,46,"Snow" + string(obj_map_controller.island1SnowAlpha));   
    draw_text(16,56,"Lava" + string(obj_map_controller.island1LavaAlpha));   
    draw_text(16,66,"Graveyard" + string(obj_map_controller.island1GraveyardAlpha));   
    draw_text(16,76,"globalMapCounter" + string(obj_map_controller.globalMapCounter))
}