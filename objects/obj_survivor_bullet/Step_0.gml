// bewege dich

x+=xspd
y+=yspd

// wenn gegner berührt wird, verursache Schaden und verschwinde

if place_meeting(x,y,obj_survivor_gegner)
{
	//führe Code mit dem berührenden Gegner aus
	with instance_place(x,y,obj_survivor_gegner)
	{
		lp -= 1;
	}
	
	instance_destroy();
}