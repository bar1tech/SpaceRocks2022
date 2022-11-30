/// @description 

// Create a “firework” effect, with a medium size and white colour.
effect_create_above(ef_firework, x, y, 1, c_white);

// Destroying player instance.
instance_destroy();

// Run Alarm 0 in object obj_game and after 120 frames (two seconds) restart the room. 
obj_game.alarm[0] = 120;