/// @description Insert description here
// You can write your code in this editor

t = 0;
page = 0;
alpha = 0;
alpha2 = 0;

skip = 0;
skip_t = 0;

text = "ddd";

#region тексты ENG

eng1 = "Anyone who's had a drink in a smelly port pub knows the legend. How it came to be, even the hardened sea wolves don't remember. "
eng2 = "However, it doesn't prevent them from scaring young sailors with it."
eng3 = "They say that in the boundless ocean there is a cursed archipelago full of secrets and dangers. Whoever can break the curse will be rewarded with untold riches and glory. ";
eng4 = "Many believed the story and went in search of adventure.";
eng5 = "It is said that the curse itself finds the ships of those worthy to set foot on its soil. !!!! Only the bravest trailblazers will be able to unravel all the secrets of this mysterious land.";
eng6 = "Oh, it seems another guest has come ashore. I hope we'll get along.";

#endregion

pic_num = spr_blank;
pic_img = 0;
#region scribble 
typist = scribble_typist();
typist.in(1, 0);

text_width = 400;
text_x = camera_get_view_x(view_camera[0])+40;
text_y = camera_get_view_y(view_camera[0])+8;
#endregion


// Тексты

page1 = @"Anyone who's had a drink in 
a smelly port pub knows the legend. How it came 
to be, even the hardened sea wolves don't remember. ";

page2 = @"However, it doesn't prevent them from
scaring young sailors with it.";

page3 = @"They say that in the boundless ocean 
there is a cursed archipelago full of secrets and
dangers. Whoever can break the curse will be rewarded
with untold riches and glory. ";

page4 = @"Many believed the story and went in 
search of adventure. ";

page5 = @"It is said that the curse itself finds 
the ships of those worthy to set foot on its soil."; 

page51 = @"Only the bravest trailblazers 
will be able to unravel all the secrets of this 
mysterious land.";

page6 = @"Oh, it seems another guest has come ashore.
I hope we'll get along.";


skip_txt = "skip";