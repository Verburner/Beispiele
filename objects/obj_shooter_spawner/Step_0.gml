if random(1) < chance
{
	richtung = random(360);
	
	spawn_x = obj_shooter_player.x + lengthdir_x(offset,richtung);
	spawn_y = obj_shooter_player.y + lengthdir_y(offset,richtung);
	
	instance_create_depth(spawn_x,spawn_y,0,obj_shooter_enemy)
}