
// macht nur etwas wenn Kosten kleiner oder gleich der Punkte sind
if kosten <= obj_euro.euro 
{
	
	// zieht Kosten von den Punkten ab
	obj_euro.euro -= kosten
	
	// beim ersten Upgrade: stelle den Timer alarm[0] auf 1 Sekunde 
	obj_euro.euro_per_click += 1
	
	// verdoppelt kosten für nächstes Upgrade
	kosten *= 2
}