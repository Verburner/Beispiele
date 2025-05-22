//zeichnet das Rechteck für den Button
draw_self();

//setzt Zeichenfarbe je nachdem ob der Spieler genug Punkte hat
if kosten <= obj_euro.euro 
	draw_set_color(c_white)
else 
	draw_set_color(c_red);
	
// setzt Schriftart, Farbe und Ausrichtung für Text
draw_set_font(fnt_clicker);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Schreibt Text und Kosten
draw_text(x,y,"Euro/Klick + 1 (" + string(kosten) + ")");