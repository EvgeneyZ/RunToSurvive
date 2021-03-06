PlayerBuffs();

bullets = BoundBetween(bullets, 0, maxbullets);
hp      = BoundBetween(hp, 0, maxhp);

shown_bullets = ApproachTo(shown_bullets, floor(bullets));
shown_hp      = ApproachTo(shown_hp, floor(hp));

switch (state)
{
	case PlayerStates.NORMAL:
		PlayerControl();
		break;
		
	case PlayerStates.TRAPPED:
		PlayerControl();
		_left =  false;
		_right =  false;
		_up =  false;
		_down =  false;
		_shoot =  false;
		_shoot_hold = false;
		break;
	
	case UniversalStates.DEAD:
		
		if (name == "Robo")
		{
			var _flag = true;
			for (var i = 1; i < 6; ++i)
			{
				if (instance_exists(body_parts[i]) && body_parts[i].image_alpha > 0)
				{
					_flag = false;
					break;
				}
			}
			
			if (_flag)
			{
			
				for (var i = 1; i < 6; ++i)  instance_destroy(body_parts[i]);
				
				var _flag_dead = true;
				if (instance_number(object_index) > 1)  with (oPlayer) 
				{ 
					if (id != other.id) 
					{ 
						if (state != UniversalStates.DEAD)  
						{
							_flag_dead = false; 
							break;
						}
					} 
				} 
				else  LevelEnd();
				if (_flag_dead)  LevelEnd();
				else             instance_destroy();
			}
		}
	
		else if (AnimationEnd()) 
		{ 
			var _flag_dead = true;
			if (instance_number(object_index) > 1)  with (oPlayer) 
			{ 
				if (id != other.id) 
				{ 
					if (state != UniversalStates.DEAD)  
					{
						_flag_dead = false; 
						break;
					}
				} 
			} 
			else  LevelEnd();
			if (_flag_dead)  LevelEnd();
			else             instance_destroy();
		}
 
		_left =  false;
		_right =  false;
		_up =  false;
		_down =  false;
		_shoot =  false;
		_jump = false;
		_shoot_hold = false;
		break;
	
	case PlayerStates.NON_CONTROL:
		PlayerSprite();
		break;
	
	default:
		Raise("Invalid player state\n");
		break;
}

if (state != PlayerStates.NON_CONTROL)
{
	PlayerMove();
	PlayerCheckDying();
	PlayerSprite();
}

if (damaged)
{
	damage_timer--;	
	if (damage_timer <= 0)  damaged = false;
}

if (knockback_timer > 0) knockback_timer--;
else	                 knockbacked = false;	


event_inherited();

if (state == UniversalStates.DEAD && name == "Robo")  image_alpha = 0;