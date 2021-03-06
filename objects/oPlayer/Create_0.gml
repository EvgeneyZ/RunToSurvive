event_inherited();

enum PlayerStates
{
	NORMAL,
	TRAPPED,
	NON_CONTROL
};

xspeed = 0;
yspeed = 0;

xspeed_desired = 0; 
acceleration = 0.3;

walkspeed = 8;
jumpspeed = 12;

damaged = false;
damage_timer = 5 * 30;
flash = 0;
go_up = true;

grounded = true;
allowed_to_move = true;
changing_row = false;
row_der = 0;
escape_direction = 0;
blocked = false;

grounded_counter = 0;
jump_counter = 0;
idlecounter = 60;

maxhp = 100;
shown_hp = maxhp;
hp = maxhp;

maxbullets = 20;
shown_bullets = maxbullets;
bullets = maxbullets;

state = PlayerStates.NORMAL;

_input_type = InputTypes.KEYBOARD;

knockbacked = false;
knockback_timer = 0;

_left = false;
_right = false;
_up = false;
_down = false;
_jump = false;
_shoot = false;
	
gun = Create(x, y, oGun, 0);
with(gun)	host = other.id;
	
hands = Create(x, y, oHands, 0);	
with(hands)	 host = other.id;

body_parts = [];
explotion_speed = 6;

revival = [0, 0, 0];
revival_number = 0;

pocket = [0, 0, 0, 0, 0];
pocket[0] = STDGUN_INUMBER;

active_pocket_index = 0;

allowed_to_move = true;
allowed_to_move_hor = true;
allowed_array = [];
allowed_hor_array = [];

for (var i = 0; i < 5; ++i)
{
	allowed_array[i] = true;
	allowed_hor_array[i] = true;
}

protected = false;

