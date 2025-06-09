
spieler = 0;
// 0 = kein spieler
// 1 = spieler 1
// 2 = spieler 2
 
// Felder die von Anfang an einem Spieler gehören
// kann man im Creation Code vom Room editor diese 
// Variable gleich auf 1 oder 2 setzen

klickbar_p1 = false;
klickbar_p2 = false;

// ob der jeweilige Spieler das Feld anklicken kann

punkte = 1+irandom(8);

// Punkte die das Feld gibt (1-9)