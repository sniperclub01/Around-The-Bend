/// @description Insert description here
// You can write your code in this editor


var layer1 = layer_get_id("Floor1Tiles");
var layer2 = layer_get_id("Floor2Tiles");
var layer3 = layer_get_id("Floor3Tiles");
var bloodStuff = layer_get_id("BloodyStuff");

if (playerFloor == 1) {
	layer_set_visible(layer1, true);
	layer_set_visible(layer2, false);
	layer_set_visible(layer3, false);
}
else if (playerFloor == 2) {
	layer_set_visible(layer1, false);
	layer_set_visible(layer2, true);
	layer_set_visible(layer3, false);
	layer_set_visible(bloodStuff, true);
}
else if (playerFloor == 3) {
	layer_set_visible(layer1, false);
	layer_set_visible(layer2, false);
	layer_set_visible(layer3, true);
	layer_set_visible(bloodStuff, true);
}

