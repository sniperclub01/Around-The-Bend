/// @description Create grid for room gen
// You can write your code in this editor

randomise();

mapGrid = ds_grid_create(25, 25);
//branchCount = 4; // How many doors are in the starting room

ds_grid_set(mapGrid, 12, 12, 1);
var xCoord = 12;
var yCoord = 12;

for (var i = 0; i < 1; i++) {
	var choice = choose("left", "right", "up", "down");

	if ((choice == "left") && (ds_grid_get(mapGrid, xCoord-1, yCoord) == 0)) {
		xCoord--;
		ds_grid_set(mapGrid, xCoord, yCoord, 1);
	}
	else if ((choice == "right") && (ds_grid_get(mapGrid,xCoord+1, yCoord) == 0)) {
		xCoord++;
		ds_grid_set(mapGrid, xCoord, yCoord, 1);
	}
	else if ((choice == "up") && (ds_grid_get(mapGrid,xCoord, yCoord-1) == 0)) {
		yCoord--;
		ds_grid_set(mapGrid, xCoord, yCoord, 1);
	}
	else if ((choice == "down") && (ds_grid_get(mapGrid,xCoord, yCoord+1) == 0)) {
		yCoord++;
		ds_grid_set(mapGrid, xCoord, yCoord, 1);
	}
	else {
		i--;
	}
	if (i = 7) {
		ds_grid_set(mapGrid, xCoord, yCoord, 2);
	}
}

alarm[0] = 3;






// Debugging

for(var i = 0; i < 25; i++) {
	row = "";
	for(var j = 0; j < 25; j++) {
		if (i == 12 && j == 12) {
			row += "x"	
		}
		else {
			row += string(ds_grid_get(mapGrid,i, j));
		}
	}
	show_debug_message(row);
	//show_debug_message("\n");
}
