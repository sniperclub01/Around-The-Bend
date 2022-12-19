//init_player(Obj_PlayerStats.playerHP, Obj_PlayerStats.playerSpeed, Obj_PlayerStats.playerDamage, 
		//Obj_PlayerStats.playerRange, Obj_PlayerStats.playerFireRate, Obj_PlayerStats.knockBackTime); 

// initialize health, speed, damage, range, fire rate, knockback time. 

// Initialize states
state_facing = STATE_FACING.right;
state_action = STATE_ACTION.idle;

// Gun initialization and variables
player_weapon = instance_create_layer(x, y, "Instances", Obj_DefaultGun);
aim_dir = 0; // Initialize where the gun is facing
fire_rate = global.playerFireRate;
can_fire = true;
bullet_speed = 4;

// Floor handling
playerFloor = 1;

// Map Generation Logic
player_X = 12;
player_Y = 12;

// Invincibility frames
invincible = false;
//hit = false;

//Obj_Controller.roomGrid = ds_grid_create(25, 25);
//ds_grid_set(Obj_Controller.roomGrid, 12, 12, global.SpawnRoom);


window_set_cursor(cr_none); // Get rid of default mouse
cursor_sprite = Spr_Crosshair; // Set it to our crosshair

#region CAMERA VARIABLES

min_view_x = 0;
min_view_y = 0;
max_view_x = 0;
max_view_y = 0;

#endregion