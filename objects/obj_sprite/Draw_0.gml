//Draw Player
draw_self();

//Draw Weapon
var _weaponYscl = 1

if aimDir > 90 && aimDir < 270
{
	_weaponYscl = -1;
}


draw_sprite_ext(Sprite7, 0, x, centerY, 1, _weaponYscl, aimDir, c_white, 1);



