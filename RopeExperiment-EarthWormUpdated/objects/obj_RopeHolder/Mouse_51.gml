/// @description Latching to the floorObject part
// You can write your code in this editor


if(CollisionFlag)
{
	if(!RMBFlag ) 
	{
		UnlatchSoundFlag = false;
		if(!LatchSoundFlag)
		{
			LatchSoundFlag = true;
			audio_play_sound(snd_Latch,1,false);
		}
		phy_speed_x = 0;
		phy_speed_y = 0;
		
		xInstant = phy_position_x;
		yInstant = phy_position_y;
		RMBFlag = true;
	}
	phy_position_x = xInstant;
	phy_position_y = yInstant;
	phy_speed_x = 0;
	phy_speed_y = 0;
	
}