// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gen_map_layout() {
	
	randomise();

	mapGrid = ds_grid_create(25, 25);
	//branchCount = 4; // How many doors are in the starting room

	ds_grid_set(mapGrid, 12, 12, 1);
	var xCoord = 12;
	var yCoord = 12;

	for (var i = 0; i < 8; i++) {
		var choice = choose("left", "right", "up", "down");

		if ((choice == "left") && (ds_grid_get(mapGrid, xCoord-1, yCoord) == 0)) {
			xCoord--;
			ds_grid_set(mapGrid, xCoord, yCoord, 1);
		}
		else if ((choice == "right") && (ds_grid_get(mapGrid,xCoord+1, yCoord) == 0)) {
			xCoord++;
			ds_grid_set(mapGrid, xCoord, yCoord, 1);
		}
		else if ((choice == "up") && (ds_grid_get(mapGrid,xCoord, yCoord+1) == 0)) {
			yCoord++;
			ds_grid_set(mapGrid, xCoord, yCoord, 1);
		}
		else if ((choice == "down") && (ds_grid_get(mapGrid,xCoord, yCoord-1) == 0)) {
			yCoord--;
			ds_grid_set(mapGrid, xCoord, yCoord, 1);
		}
		else {
			i--;
		}
		if (i = 7) {
			ds_grid_set(mapGrid, xCoord, yCoord, 2);
		}
	}
}