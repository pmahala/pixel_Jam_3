/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(obj_RopeTail) <= 90)
{
	StretchFlag = false;
}
else
{
	StretchFlag = true;
	xInstant = phy_position_x;
	yInstant = phy_position_y;
}
if(CollisionFlag)
{
	if(distance_to_object(obj_Floor) > 15)
	{
		CollisionFlag = false;
	}
}