/// @description Game Over

// Inherit the parent event
event_inherited();

// end the game
// we moved this code here from Left Pressed
// so the player can observe the mouse click
game_end();

/*
 * NB: After we move our code from Left Pressed to
 *     Alarm 0 we cannot simply delete event_inherited()
 *     from Left Pressed.  Doing so will simply render
 *     our Quit button ineffective.  We must delete the 
 *     Left Pressed event completely from this object.
 *     The code from our Parent is still in effect.
 */