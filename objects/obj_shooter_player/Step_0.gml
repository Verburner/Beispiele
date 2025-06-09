if keyboard_check(ord("W")) move_y = -1
else if keyboard_check(ord("S")) move_y = 1
else move_y = 0

if keyboard_check(ord("D")) move_x = 1
else if keyboard_check(ord("A")) move_x = -1
else move_x = 0

//bewegungs vektor

if point_distance(0,0,move_x,move_y) > 0 //
{
	bewegungsvek = point_direction(0,0,move_x,move_y)

	// in richtung bewegen

	x += lengthdir_x(geschw,bewegungsvek)
	y += lengthdir_y(geschw,bewegungsvek)
}



// richtung zu mouse cursor berechnen
richtung = point_direction(x,y,mouse_x,mouse_y)

//auf cursor zeigen
image_angle = richtung 

//schießen
if mouse_check_button(mb_left) and !shot_on_cooldown
{
	// erzeuge bullet
	with instance_create_depth(x,y,1,obj_shooter_bullet)
	{
		// zeigt in selbe Richtung wie Spieler
		image_angle = other.richtung
		richtung = other.richtung
	}
	
	// cooldown für Schuss
	shot_on_cooldown = true
	alarm[0] = shot_cooldown
}
