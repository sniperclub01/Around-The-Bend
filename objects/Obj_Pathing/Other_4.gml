/// @description 

#macro TS		64

//get tiles in room
var _width = ceil(room_width / TS);
var _height = ceil(room_height / TS);

// create motion planning grid
global.mp_grid = mp_grid_create(0, 0, _width, _height, TS, TS);

// add solid instances to the grid
mp_grid_add_instances(global.mp_grid, Obj_Wall, false);