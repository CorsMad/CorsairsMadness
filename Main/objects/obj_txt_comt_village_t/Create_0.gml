


#region  ENG text
eng1 = "[fnt_pixel][wave]Greetings, stranger![/wave] I am the chief of this settlement of natives. I know you're tired and hungry, but there's no time to rest. You want to save your crew, don't you?";
eng2 = "[fnt_pixel]It won't be easy, but if you put aside fear and greed, you can do it. Your team members are locked in cursed temples, but it's not easy to get in.";
#endregion

text = "";
scr_t = 0;

typist = scribble_typist();
typist.in(1, 0);

text_width = 400;
text_x = camera_get_view_x(view_camera[0])+40;
text_y = camera_get_view_y(view_camera[0])+8;
