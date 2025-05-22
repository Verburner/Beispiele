// wenn Lebenspunkte 0 sind, zerstört er sich selbst
if lp <= 0
{
	instance_destroy();
}

// bewegt sich richtung spieler

richtung = point_direction(x,y,obj_survivor_spieler.x,obj_survivor_spieler.y);

x+=lengthdir_x(geschw,richtung)
y+=lengthdir_y(geschw,richtung)