/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black); //The color of the screen
draw_set_alpha(.5);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), 0); //Draw a big rectangle over the GUI
draw_set_color(c_white); //The color of the text
draw_set_font(fnt_timer); //The font you want for the text
draw_set_halign(fa_center); //Align the text in the center of the screen
draw_set_alpha(1);
draw_text(display_get_gui_width()/2, display_get_gui_height()/2,goMessage); 
