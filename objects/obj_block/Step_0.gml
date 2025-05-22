
// Jeder Block bewegt sich nacht links bis er außerhalb des Bildschirms ist
// Dann zerstört er sich selbst
x -= scrollspeed;

if x < -200
{
	instance_destroy();
}