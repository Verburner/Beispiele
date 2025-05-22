// timer stellt sich selbst
alarm[0]= 60;

// wiederhole alles innerhalb der Schleife "gegner_pro_sek"-Mal

repeat(gegner_pro_sek)
{
	//Zufällige Richtung bestimmen
	richtung = random(360);
	
	x_position = lengthdir_x(distanz,richtung);
	y_position = lengthdir_y(distanz,richtung);
	
	//gegner erzeugen
	instance_create_depth(x_position,y_position,-1,obj_survivor_gegner);
}