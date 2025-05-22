geschw = 9

//bestimme zufällige Richtung

richtung = random(360)

// setze horizontale und vertikale geschw

xspd = lengthdir_x(geschw,richtung)
yspd = lengthdir_y(geschw,richtung)

// setze Timer um selbst zu zerstören
// 10 Sekunden

alarm[0] = 600;