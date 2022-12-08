/// @description Insert description here
// You can write your code in this editor
playerFloor++;

var layer1 = layer_get_id("Floor1Tiles");
var layer2 = layer_get_id("Floor2Tiles");
var layer3 = layer_get_id("Floor2Tiles");

// Change to the correct layer for the tileset
if (playerFloor == 1) {
	layer_set_visible(layer1, true);
	layer_set_visible(layer2, false);
	layer_set_visible(layer3, false);
}
else if (playerFloor == 2) {
	instance_create_layer(0, 0, "Instances", Obj_ApplyShader);
	Obj_ApplyShader.dizzyTimer = 240;
	layer_set_visible(layer1, false);
	layer_set_visible(layer2, true);
	layer_set_visible(layer3, false);
}
else if (playerFloor == 3) {
	layer_set_visible(layer1, false);
	layer_set_visible(layer2, false);
	layer_set_visible(layer3, true);
}
else if (playerFloor == 4) {
	nextFloor = room_duplicate(Room_End);
	room_goto(nextFloor);
	x = 480;
	y = 480;
	exit;
}

instance_destroy(Obj_Controller);
nextFloor = room_duplicate(Room_Start);
room_goto(nextFloor);
x = 480;
y = 480;