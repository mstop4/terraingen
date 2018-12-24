draw_set_colour(c_black);
draw_rectangle(0,0,obj_MDP.app_width,obj_MDP.app_height,false);

draw_set_font(fnt_word_list);
draw_set_colour(c_white);
draw_text(0,0,message);
draw_text(0,32,string(progress) + "/" + string(progress_max));