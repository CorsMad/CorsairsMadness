/// @description Insert description here
// You can write your code in this editor

if pause{

    surface_set_target(application_surface);

    if surface_exists(pauseSurface) draw_surface(pauseSurface,0,0);
    else
    {
        pauseSurface = surface_create(surface_get_width(application_surface),surface_get_height(application_surface))   ;
    }
    draw_set_font(fnt_pixel)
    draw_text_scribble(256,256,"OLEG oleg 228");
    surface_reset_target();


        
    
}


if keyboard_check_pressed(vk_escape) {
    if !pause {
        pause = true;  
        
        instance_deactivate_all(true)

        pauseSurface = surface_create(surface_get_width(application_surface),surface_get_height(application_surface));
        surface_set_target(pauseSurface);
        draw_surface(application_surface,0,0);
        surface_reset_target();
           
    } else {
        pause = false;
        instance_activate_all();
    }
}


draw_text(128,128,"OLEG")   ;





