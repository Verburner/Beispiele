draw_self();

if kosten <= obj_euro.euro 
	draw_set_color(c_white)
else 
	draw_set_color(c_red);
	
draw_set_font(fnt_clicker);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x,y,"Autoklick/Sek +1 (" + string(kosten) + ")");