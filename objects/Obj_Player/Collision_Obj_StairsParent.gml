/// @description Insert description here
// You can write your code in this editor
Obj_PlayerStats.playerFloor++;

instance_destroy(Obj_Controller);
nextFloor = room_duplicate(Room_Start);
instance_destroy();
room_goto(nextFloor);

// Change to the correct layer for the tileset

//x = 480;
//y = 480;