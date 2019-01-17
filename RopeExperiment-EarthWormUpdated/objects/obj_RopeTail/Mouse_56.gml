/// @description Insert description here
// You can write your code in this editor
LMBFlag = false;
if(CollisionFlag && !obj_RopeHolder.RMBFlag)
{
	LaunchLatchFlag = true;
	LatchInstantX = phy_position_x;
	LatchInstantY = phy_position_y;
}