/// @description Insert description here
// You can write your code in this editor

#region eng

eng1 = "[fnt_pixel]Well, I'm glad you got here safely. I knew you were the one for me. Heh heh...";
eng2 = "[fnt_pixel]As you can see, there's a lot of interesting things in my shop. I'd sell you anything for the right price. Speaking of money.";
eng3 = "[fnt_pixel]You might find some green coins along the way, be sure to collect them-they're very valuable, you know. For example, you can give them to me, and I'll make you stronger";
eng4 = "[fnt_pixel]Also, I saw you in action in that underground temple. Some enemies will drop dark essence from some of them. Depending on your actions, your style rating will go up and more essence will drop out!";
eng5 = "[fnt_pixel]Later on I will be able to exchange it for your training.";
eng6 = "[fnt_pixel]At this point, I bid you farewell. My dear friend, captain, I'm sure you'll manage to save your crew and come back safe and sound. Good luck on your journey!";
eng7 = "[fnt_pixel]In the meantime, here's a memo to help you figure out your battles.";
#endregion

scr_text_starter(6,0.5);

/*
text[0,0] = "Well, I'm glad you got here safely. I knew you were the one for me. Heh heh...";
text[0,1] = "As you can see, there's a lot of interesting things in my shop. I'd sell you anything for the right price. Speaking of money.";
text[0,2] = "You might find some green coins along the way, be sure to collect them-they're very valuable, you know. For example, you can give them to me, and I'll make you stronger";
text[0,3] = "Also, I saw you in action in that underground temple. Some enemies will drop dark essence from some of them. Depending on your actions, your style rating will go up and more essence will drop out!";
text[0,4] = "Later on I will be able to exchange it for your training.";
text[0,5] = "At this point, I bid you farewell. My dear friend, captain, I'm sure you'll manage to save your crew and come back safe and sound. Good luck on your journey!";
text[0,6] = "In the meantime, here's a memo to help you figure out your battles.";



text_current = 0;
text_last = 6;
text_width = 400;
text_x = camera_get_view_x(view_camera[0])+40;
text_y = camera_get_view_y(view_camera[0])+8;

char_current = 1;
char_speed = 0.25;

text[0,text_current] = string_wrap(text[0,text_current], text_width);