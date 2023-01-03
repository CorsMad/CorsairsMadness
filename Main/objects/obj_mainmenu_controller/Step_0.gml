
#region 1 появление и появление спецэффектов
if state = 0
{
    if t < 72 t++;
    if t = 50
    {
        instance_create_depth(0,0,0,obj_mainmenu_graph_pic);        
    }
    
    if t = 70
    {
        instance_create_depth(0,0,-1,obj_mainmenu_graph_fvx);   
    }
}
#endregion

#region 2 перемещение всего и переход

if state = 2
{
    if instance_exists(obj_mainmenu_graph_pic) && instance_exists(obj_mainmenu_graph_title)
    {
        obj_mainmenu_graph_pic.state = 10;
        obj_mainmenu_graph_title.state = 10;
    }
    t++;
    if t = 100 room_goto(MainMenu);
}

#endregion



