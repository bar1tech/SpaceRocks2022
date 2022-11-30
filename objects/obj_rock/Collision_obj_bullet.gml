/// @description 

//  destroy the “other” instance, i.e. the bullet. 
instance_destroy(other);

// create an explosion effect at the rock’s location with size medium (1) and colour white.
effect_create_above(ef_explosion, x, y, 1, c_white);

// set the direction to a random value.
direction = random(360);

// if the collision with the obj_rock instance has a big rock sprite then
//		change the obj_rock instance's sprite to a small rock sprite
//		make a copy of that instance so there are now 2 obj_rock both with small rock sprites
// else if the number of obj_rock instances is less than 12 rocks in the room (and it's a small rock)
//		change the obj_rock sprite from a small rock sprite to a big rock sprite
//		set the rock's x (horizontal) position to -100 so the rock goes outside the room and re-enters
// else
//		it's not a big rock, the number of obj_rock instances is not less than 12, hence destroy the obj_rock instance
if sprite_index == spr_rock_big
{
	sprite_index = spr_rock_small;
	instance_copy(true);
}
else if instance_number(obj_rock) < 12
{
	sprite_index = spr_rock_big;
	x = -100;
}
else
{
	instance_destroy();
}

// accumulate score
obj_game.points += 50;
