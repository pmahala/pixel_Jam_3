/// @description Insert description here
// You can write your code in this editor
RMBFlag = false;
CollisionFlag = false;
StretchFlag = false;





//chain generation branch

offset_y = 0;
host = self;
next_rope = instance_create_layer(x,y+offset_y,"Body",obj_Rope);
attach = physics_joint_distance_create(host,next_rope,host.x,host.y,next_rope.x,next_rope.y,false);

physics_joint_set_value(attach,phy_joint_damping_ratio,0.5);
physics_joint_set_value(attach,phy_joint_frequency,10);
with(next_rope)
{
	parent = other.id;
}

repeat(5)
{
	offset_y+=1;
	last_rope = next_rope;
	
	next_rope = instance_create_layer(x,y+offset_y,"Body",obj_Rope);
	
	link = physics_joint_distance_create(last_rope,next_rope,last_rope.x,last_rope.y,next_rope.x,next_rope.y,false);
	physics_joint_set_value(link,phy_joint_damping_ratio,0.5);
	physics_joint_set_value(link,phy_joint_frequency,10);
	with(next_rope)
	{
		parent = other.last_rope;
	}
	
}

offset_y+=1;
tail = instance_create_layer(x,y+offset_y,layer,obj_RopeTail);
next_rope = last_rope;
attachTail = physics_joint_distance_create(tail,next_rope,tail.x,tail.y,next_rope.x,next_rope.y,false);

physics_joint_set_value(attachTail,phy_joint_damping_ratio,0.5);
physics_joint_set_value(attachTail,phy_joint_frequency,10);

draw_line_width(tail.x,tail.y+5,next_rope.x,next_rope.y,3);


