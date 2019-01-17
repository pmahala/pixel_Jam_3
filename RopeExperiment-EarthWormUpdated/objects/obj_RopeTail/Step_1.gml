/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(obj_RopeHolder) <= 90)
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
	if(distance_to_object(obj_Floor) > 10)
	{
		CollisionFlag = false;
	}
}

if(LaunchLatchFlag && !obj_RopeHolder.RMBFlag)
{
	if(distance_to_object(obj_RopeHolder) > 0.5)
	{
		phy_position_x = LatchInstantX;
		phy_position_y = LatchInstantY;
		phy_speed_x = 0;
		phy_speed_y = 0;
	}
	else
		LaunchLatchFlag = false;
	
}