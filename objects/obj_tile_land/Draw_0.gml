
// wenn Spieler 1 dran ist, und das Feld an ein p1 Feld angrenzt
p1_leuchten = klickbar_p1 and spieler==0 or spieler == 1

// wenn Spieler 2 dran ist, und das Feld an ein p2 Feld angrenzt
p2_leuchten = klickbar_p2 and spieler ==0 or spieler == 2

// wenn das Feld zum Spieler gehört der dran ist, oder es angeklickt werden kann
// wird es vollständig gezeichnet. Sonst halb durchsichtig
if obj_control.turn == 1
{
	if (p1_leuchten) image_alpha = 1
	else image_alpha = 0.4
}
else 
{
	if (p2_leuchten) image_alpha = 1
	else image_alpha = 0.4
}

draw_self()

draw_set_color(c_black);
draw_set_font(fnt_strategy)
draw_text(x,y,string(punkte))
