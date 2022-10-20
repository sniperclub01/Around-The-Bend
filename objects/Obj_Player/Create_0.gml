init_player(3, 3, 1, 240, 18); // initialize health, speed, damage, range, fire rate. (so it can eventually be character based)

// Initialize states
state_facing = STATE_FACING.right;
state_action = STATE_ACTION.idle;

// Gun initialization and variables
player_weapon = instance_create_layer(x, y, "Instances", Obj_DefaultGun);
aim_dir = 0; // Initialize where the gun is facing
fire_rate = global.playerFireRate;
can_fire = true;
bullet_speed = 4;




window_set_cursor(cr_none); // Get rid of default mouse
cursor_sprite = Spr_Crosshair; // Set it to our crosshair