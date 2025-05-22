// Überprüft ob der Spieler in einen Block reinrennt
// Mit x+5 und y-1 wird ein stück rechts vom Spieler gecheckt 
if place_meeting(x+5,y-1,obj_block) or y > room_height
{
	room_restart();
}

// Überprüft ob der Spieler auf einem Block steht
if place_meeting(x,y+1,obj_block)
{
	// Setze Fallgeschwindigkeit auf 0 und resette Doppelsprung
	fallgeschw = 0;
	doppel = true;
	
	// Spieler kann springen wenn er den Boden berührt und Leertaste gedrückt wird
	if keyboard_check_pressed(vk_space)
	{
		fallgeschw = -sprungkraft;
	}
}
else
{
	// Spieler berührt den Boden NICHT
	
	// Wenn Doppelsprung bereit ist
	if doppel
	{
		if keyboard_check_pressed(vk_space)
		{
			// Setze Doppelsprung auf "aufgebraucht". Spring etwas weniger hoch
			// als der normale Sprung
			doppel = false;
			fallgeschw = -sprungkraft*0.75;
		}
	}
	
	// Spieler wird von Schwerkraft nach unten gedrückt wenn er nicht den Boden berührt
	fallgeschw += schwer;
}

// Vertikale Bewegung

// Wenn der Platz unter dem Spieler frei ist, fällt er einfach
// Wenn ein Block unter dem Spieler ist, fällt er nur so lange, 
// bis er diesen berührt

if !(place_meeting(x,y+fallgeschw,obj_block))
{
	y+= fallgeschw
}
else
{
	while (!(place_meeting(x,y+1,obj_block)))
	{
		y+=1;
	}
}