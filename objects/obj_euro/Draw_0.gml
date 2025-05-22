// stellt sicher, dass der Sprite trotzdem normal gezeichnet wird
draw_self();

// Stellt zeichenfarbe auf Gelb und Schriftart auf fnt_clicker
draw_set_color(c_yellow);
draw_set_font(fnt_clicker);

// Setzt Ausrichtung vom Text auf Zentriert
draw_set_halign(fa_center);

// Zeigt den Punktestand gefolgt von € Symbol mittig auf dem oberen Bildschirmrand
draw_text(room_width/2,100,string(euro) + "Euro");