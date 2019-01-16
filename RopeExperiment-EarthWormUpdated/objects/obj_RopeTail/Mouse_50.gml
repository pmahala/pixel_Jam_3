/// @description Latching part
// You can write your code in this editor
if(CollisionFlag)
{
	if(!LMBFlag)
	{
	phy_speed_x = 0;
	phy_speed_y = 0;
	xInstant = phy_position_x;
	yInstant = phy_position_y;
	LMBFlag = true;
	}
	phy_position_x = xInstant;
	phy_position_y = yInstant;
	phy_speed_x = 0;
	phy_speed_y = 0;
	
}