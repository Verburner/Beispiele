// Der Timer setzt sich selbst erneut

alarm[0] = 60/bloecke_pro_sekunde

// Ein Block wird erzeugt mit den Koordinaten:
// x = Breite des Raumes
// y = Drittel der Raumhöhe + 
// Zufallszahl zwischen 0 und Drittel der Raumhöhe


instance_create_depth(room_width,room_height/3+random(room_height/3),0,obj_block);