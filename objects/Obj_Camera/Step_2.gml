/// @description Insert description here
// You can write your code in this editor

#macro view view_camera[0]
if (room = Room_Spawn_4Way || Room_Spawn_Down || Room_Spawn_Left || Room_Spawn_Left_Down ||
	Room_Spawn_NoDown || Room_Spawn_NoLeft || Room_Spawn_NoRight || Room_Spawn_NoUp
	|| Room_Spawn_Right || Room_Spawn_Right_Down || Room_Spawn_Right_Left ||
	Room_Spawn_Up || Room_Spawn_Up_Down || Room_Spawn_Up_Left || Room_Spawn_Up_Right) 
{
	view_width = 1920/2;
	view_height = 1080/2;
}
else {
view_width = 1920/1;
view_height = 1080/1;	
}

camera_set_view_size(view, view_width, view_height);

if(instance_exists(Obj_Player)) {
	var _x = clamp(Obj_Player.x-view_width/2, 0, room_width - view_width);
	var _y = clamp(Obj_Player.y-view_height/2, 0, room_height - view_height);
	camera_set_view_pos(view, _x, _y);
	
	var _cur_x = camera_get_view_x(view);
	var _cur_y = camera_get_view_y(view);
	
	/*var _spd =.1;
	camera_set_view_pos(view,
						lerp(_cur_x, _x, _spd),
						lerp(_cur_y, _y, _spd));*/
}
