if spieler == 0 // kein Spieler
	sprite_index = spr_tile_land
else if spieler == 1 // Spieler 1
	sprite_index = spr_tile_land_blue
else if spieler == 2 // Spieler 2
	sprite_index = spr_tile_land_red
	

// macht angrenzende Felder klickbar für den jeweiligen Spieler
with obj_tile_land
{
	if point_distance(x,y,other.x,other.y) < 200
	{
		if other.spieler == 1 klickbar_p1 = true;
		if other.spieler == 2 klickbar_p2 = true;
	}
}