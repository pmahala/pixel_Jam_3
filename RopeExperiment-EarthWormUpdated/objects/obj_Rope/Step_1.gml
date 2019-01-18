/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(obj_Floor) > 1)
{
	if(!obj_RopeHolder.CollisionFlag && !obj_RopeTail.CollisionFlag)
		DropSoundFlag = false;
}