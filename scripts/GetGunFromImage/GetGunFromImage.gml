///@deck ImageIndex -> GunState
function GetGunFromImage(argument0) {

	switch (argument0)
	{
		case STDGUN_INUMBER:
			return Gun.STANDART_GUN;
		case SHOTGUN_INUMBER:
			return Gun.SHOTGUN;
		case POWERGUN_INUMBER:
			return Gun.POWERGUN;
		case ROCKET_LAUNCHER_INUMBER:
			return Gun.ROCKET_LAUNCHER;
		default:
			Raise("Wrong gun image_index\n");
			break;
	}


}
