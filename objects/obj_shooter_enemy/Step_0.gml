richtung = point_direction(x,y,obj_shooter_player.x,obj_shooter_player.y)

// zum spieler bewegen
x += lengthdir_x(geschw,richtung)
y += lengthdir_y(geschw,richtung)

// spiel beenden wenn spieler berührt wird
if place_meeting(x,y,obj_shooter_player)
	room_restart()

// verschwinde wenn hp 0 sind
if hp <= 0 
{
	obj_shooter_player.punkte += 1
	instance_destroy()

}