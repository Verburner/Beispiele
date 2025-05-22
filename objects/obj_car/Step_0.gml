//*+*+*+ inputs

if keyboard_check(up)
{
	//erhöhe geschwindigkeit
	geschw += beschl
}
else if keyboard_check(down)
{
	if geschw > 1
	{
		//bremse wenn gefahren wird
		geschw /= bremskraft
	}
	else
	{
		//rückwärtsgang ist langsamer als vorwärts
		geschw -= beschl/2
	}
}

if keyboard_check(right)
{
	drehgeschw -= drehbeschl
	
	drehgeschw = max(-max_drehgeschw,drehgeschw)
}
else if keyboard_check(left)
{
	drehgeschw += drehbeschl
	
	drehgeschw = min(max_drehgeschw,drehgeschw)
}
else 
{
	//stoppt drehung wenn nicht gelenkt wird
	drehgeschw /= 2;
}

//*+*+ Bewegung

image_angle += drehgeschw

x += lengthdir_x(geschw,image_angle)
y += lengthdir_y(geschw,image_angle)

if place_meeting(x,y,obj_grass)
{
	geschw /= reibung_gras
}
else
{
	geschw /= reibung_norm
}

//gehe zurück zum start wenn reifen berührt wird
if place_meeting(x,y,obj_reifen)
{
	x = start_x
	y = start_y
	geschw = 0;
	drehgeschw = 0;
	image_angle = 90;
}

//starte neu wenn ein Spieler gewonnen hat
if place_meeting(x,y,obj_finish)
{
	room_restart();
}


