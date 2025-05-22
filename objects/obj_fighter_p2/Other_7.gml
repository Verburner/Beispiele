if sprite_index == spr_fighter_attack
{
	instance_create_depth(x,y,1,hitbox);
	sprite_index = spr_fighter_winddown
}
else
{
	sprite_index = spr_fighter
}
