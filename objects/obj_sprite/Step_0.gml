
rightKey = keyboard_check( ord( "D"));
leftKey = keyboard_check( ord( "A"));
upKey = keyboard_check( ord( "W"));
downKey = keyboard_check( ord( "S"));

	//Movement
#region
	var _horizKey = rightKey - leftKey;
	var _vertKey = downKey - upKey;
	moveDir = point_direction(0, 0, _horizKey, _vertKey);
	
	// X and Y speeds
	var _spd = 0;
	var _inputLevel = point_distance(0, 0, _horizKey, _vertKey);
	_inputLevel = clamp( _inputLevel, 0, 1); 
	_spd = moveSpd * _inputLevel;
	
	xspd = lengthdir_x(_spd, moveDir);
	yspd = lengthdir_y(_spd, moveDir);
	
	//Collisions
	if place_meeting( x + xspd, y, oWall)
	{
		xspd = 0;
	}
	if place_meeting( x, y + yspd, oWall)
	{
		yspd = 0;
	}
	
	//Move player
	x += xspd;
	y += yspd;
	
	//depth
	depth = -bbox_bottom;
#endregion


//Player Aiming
	centerY = y + centerYOffset; 
	
	//AIM
	aimDir = point_direction(x, centerY,mouse_x, mouse_y)


//Sprite control
#region
	//Check if player is facing correct direction
	face = round( aimDir/90 );
	if face == 4 { face = 0; };
	
	
	//Aniamte
	if xspd == 0 && yspd == 0
	{
		image_index = 0;
	}

	//Set Player Sprite
	sprite_index = sprite[face]
	
#endregion
	