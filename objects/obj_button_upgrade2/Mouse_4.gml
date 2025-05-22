
// macht nur etwas wenn Kosten kleiner oder gleich der Punkte sind
if kosten <= obj_euro.euro 
{
	
	// zieht Kosten von den Punkten ab
	obj_euro.euro -= kosten
	
	// beim ersten Upgrade: stelle den Timer alarm[0] auf 1 Sekunde 
	if obj_euro.autoclicks_pro_sek  == 1
	{
		show_debug_message("sollte")
		obj_euro.alarm[0] = 60;
	}
	else
	{
		// bei jedem weiteren Upgrade: erhöhe die Anzahl an Autoklicks pro Sekunde um 1 
		obj_euro.autoclicks_pro_sek += 1
	}
	
	// verdoppelt Kosten für nächstes Upgrade
	kosten *= 2
}