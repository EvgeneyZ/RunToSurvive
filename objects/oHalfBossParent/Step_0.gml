
if (shown_hp != hp)  healthbar_alpha = 1;
shown_hp = ApproachTo(shown_hp, hp);

if (!active && state != HalfBossStates.INACTIVE)
{
	saved_state = state;
	state = HalfBossStates.INACTIVE;
}

if (hp <= 0 && state != UniversalStates.DEAD && state != HalfBossStates.INACTIVE)
{
	StopBattle();
	state = UniversalStates.DEAD;
	image_index = 0;
	
	with (Create(x, y, oItemDrop, row))
	{
		depth -= 2;
		image = HEARTH_INUMBER;
	}
}

if (x < oCamera.left - CAMERA_OFFSET)  instance_destroy();	


switch(state)
{
	case HalfBossStates.IDLE:
		player = script_execute(notice_player);
		if (player != noone)  state =  HalfBossStates.TRIGGERED;
		break;

	case HalfBossStates.TRIGGERED:
		if (!instance_exists(player) || player.state == UniversalStates.DEAD)  
		{
			player = noone;
			state = HalfBossStates.IDLE;
		} 
		else
		{
			player = script_execute(notice_player);
			if (player == noone)  state =  HalfBossStates.IDLE;	
		}
		break;
		
	case HalfBossStates.INACTIVE:
		if (active)  state = saved_state;
		break;
		
	case UniversalStates.DEAD:
		if (AnimationEnd())  image_speed = 0;
		break;
		
	default:
		break;
}


if (CheckCollisions(x, y - 1, oSolidParent, row))
{	
	if (bbox_left > oCamera.right)  
	{
		instance_destroy();
		exit;
	}
	var _obstacle = instance_place(x, y - 1, oSolidParent);
	Assert(_obstacle != noone, "Invalid obstacle!");
		
	if (!escape_direction)  escape_direction = sign(x - _obstacle.x);     // if escape_direction isn`t set yet, 
	xspeed = abs(walkspeed) * escape_direction / 2;	                          // calculate the direction player need to go out of the obstacle
}
else  
{
	escape_direction = 0;	
}

event_inherited();