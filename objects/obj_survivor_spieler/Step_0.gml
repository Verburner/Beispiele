
// setzt Bewegungsrichtung auf 0
x_bewegung = 0;
y_bewegung = 0;

// Bestimmt je nach Tastendruck in welche Richtung 
// Der Spieler sich bewegen soll

if keyboard_check(ord("W"))
{
	y_bewegung = -1
}
if keyboard_check(ord("A"))
{
	x_bewegung = -1
}
if keyboard_check(ord("S"))
{
	y_bewegung = 1
}
if keyboard_check(ord("D"))
{
	x_bewegung = 1
}

// Spieler bewegt sich nur, wenn eine Richtungstaste gedrückt wird
if abs(x_bewegung) + abs(y_bewegung) != 0
{
	// Berechnet die RIchtung in die der SPieler sich bewegt
	richtung = point_direction(0,0,x_bewegung,y_bewegung)

	// Der Spieler bewegt sich
	x+=lengthdir_x(geschw,richtung)
	y+=lengthdir_y(geschw,richtung)
}

//starte Spiel neu, wenn gegner berührt wird
if place_meeting(x,y,obj_survivor_gegner) game_restart();