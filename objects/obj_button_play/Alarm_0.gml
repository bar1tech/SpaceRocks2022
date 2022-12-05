/// @description Goto rm_game

// Inherit the parent event
event_inherited();

// go to the play game room
// we moved this code here from Left Pressed
// so the player can observe the mouse click
room_goto(rm_game);

/*
 * NB: After we move our code from Left Pressed to
 *     Alarm 0 we cannot simply delete event_inherited()
 *     from Left Pressed.  Doing so will simply render
 *     our Play button ineffective.  We must delete the 
 *     Left Pressed event completely from this object.
 *     The code from our Parent is still in effect.
 */