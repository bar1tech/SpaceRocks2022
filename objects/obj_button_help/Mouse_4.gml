/// @description

// Inherit the parent event
event_inherited();

// if an instance of obj_controls already exists in the room
//		destroy existing instance, controls disappear
//else
//	an instance of obj_controls does not exist so create one, controls appear
if instance_exists(obj_controls)
{
	instance_destroy(obj_controls);
}
else
{
	instance_create_layer(room_width / 2, room_height - 100, "Instances", obj_controls);
}