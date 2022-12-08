/// @description Insert description here
// You can write your code in this editor

#region WEAPON STATE

player_weapon.depth = depth - 1;
	
player_weapon.x = x + lengthdir_x(10, aim_dir);
player_weapon.y = y + lengthdir_y(10, aim_dir);
	
#endregion

/*
#region CLAMPED CAMERA

halfViewWidth = camera_get_view_width(view_camera[0]) / 2;
halfViewHeight = camera_get_view_height(view_camera[0]) / 2;

cx = x - halfViewWidth;
cy = y - halfViewHeight;

cx = clamp(cx, min_view_x, room_width - camera_get_view_width(view_camera[0]));
cy = clamp(cy, min_view_y, room_height - camera_get_view_width(view_camera[0]));

camera_set_view_pos(view_camera[0], cx, cy);

#endregion
*/