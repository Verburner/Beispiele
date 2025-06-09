x += lengthdir_x(geschw,richtung)
y += lengthdir_y(geschw,richtung)

// wenn Gegner berührt wird, fange ihn in dieser Variable ein
target = instance_place(x,y,obj_shooter_enemy)

// wenn ein Gegner berührt wurde
if target != noone
{
	// verursache Schaden und verschwinde
	target.hp -= 1
	instance_destroy();
}