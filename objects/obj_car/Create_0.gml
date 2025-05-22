//*+*+Key-bindings
up = ord("W");
down = ord("S");
left = ord("A");
right = ord("D");

//*+*+steuerung

//momentane geschwindigkeit in pixel / frame
geschw = 0
//beschleunigung
beschl = 0.2
//bremskraft - geschwindigkeit wird dadurch dividiert
bremskraft = 1.5;

//momentane drehgeschwindigkeit in Grad / frame
drehgeschw = 0
//maximale drehgeschw.
max_drehgeschw = 2
//beschleunigung der drehgeschw
drehbeschl = 0.25

//*+*+physics

//reibung wenn gras nicht berührt wird
//geschwindigkeit wird in jedem Frame dividiert
reibung_norm = 1.025

//reibung wenn gras berührt wird
reibung_gras = 1.1


//start position merken
start_x = x
start_y = y


