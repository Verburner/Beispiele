//setze Timer erneut

//4 mal Pro Sekunde
alarm[0] = 15;

// erzeuge Kugeln

repeat(schuesse_pro_sek/4)
{
	instance_create_depth(x,y,-1,obj_survivor_bullet)
}