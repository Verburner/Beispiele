if sprite_index == spr_fighter
{
	if keyboard_check(taste_links)
	{
		x-=geschw
	}

	if keyboard_check(taste_rechts)
	{
		x+=geschw
	}

	if keyboard_check(taste_angriff)
	{
		if sprite_index != spr_fighter_attack sprite_index = spr_fighter_attack
	}
	if keyboard_check(taste_sprung)
	{
		if place_meeting(x,y+1,obj_boden)
		{
			yspd = -sprungkraft;
		}
	}
}


if !place_meeting(x,y+1,obj_boden)
{
	yspd += schwer;
}

if !place_meeting(x,y+yspd,obj_boden)
{
	y+=yspd;
}

else
{
	while !place_meeting(x,y,obj_boden) 
	{
		y++;
	}
}

if lp <= 0
{
	instance_destroy();
}