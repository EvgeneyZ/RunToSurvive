with(Create(x, y, oExplosion, row))
{
	sprite_index = sExplosion;
	dir = other.dir;
	scale = other.scale;
	depth = other.depth;
}

if (display) with(Create(x, y, oDamageNumber, row))
{
	damage = other.damage;
	depth = other.depth - 2;
}