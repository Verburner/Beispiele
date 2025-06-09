draw_set_color(c_white);
draw_set_font(fnt_strategy)

if turn == 1
	draw_text(display_get_gui_width()/2,16,"Spieler 1 am Zug")
else 
	draw_text(display_get_gui_width()/2,16,"Spieler 2 am Zug")
	

draw_text(display_get_gui_width()-150,16,"Spieler 2: " + string(punkte_p2));

draw_text(75,16,"Spieler 1: " + string(punkte_p1));