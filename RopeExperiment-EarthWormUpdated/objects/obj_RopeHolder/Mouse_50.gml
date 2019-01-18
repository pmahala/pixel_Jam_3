/// @description MouseSeekingPart
// You can write your code in this editor
if(obj_RopeTail.CollisionFlag)  //ensuring if the other end is securely latched...
{
	CollisionFlag = false;
	if(!StretchFlag)
	{
		LatchSoundFlag = false;
		if(!UnlatchSoundFlag)
		{
			UnlatchSoundFlag = true;
			audio_play_sound(snd_Unlatch,1,false)
		}
		phy_speed_x = (mouse_x - x)/50;
		phy_speed_y = (mouse_y - y)/50;
	
	}
	else
	{
		phy_position_x = xInstant;
		phy_position_y = yInstant;
		phy_speed_x = 0;
		phy_speed_y = 0;
	}
}

