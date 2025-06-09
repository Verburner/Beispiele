
if obj_control.turn == 1 and spieler == 0 and klickbar_p1
{
	// wenn Spieler 1 dran ist
	spieler = 1
	obj_control.punkte_p1 += punkte;
	
	// Spieler 2 kommt als nächster dran
	obj_control.turn = 2
}
else if obj_control.turn == 2 and spieler == 0 and klickbar_p2
{
	// wenn Spieler 2 dran ist
	spieler = 2
	obj_control.punkte_p2 += punkte;
	
	// Spieler 1 kommt als nächster dran
	obj_control.turn = 1
}
