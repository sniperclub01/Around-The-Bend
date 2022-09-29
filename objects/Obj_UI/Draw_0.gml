/// @description Draw stats
// You can write your code in this editor

var _currentPlayerHealth = global.currentPlayerHealth;
var _maxPlayerHealth = global.maxPlayerHealth;
var _playerDamage = global.playerDamage;

draw_set_color(c_black);
draw_text(64,64, "Max Health: " + string(_maxPlayerHealth));
draw_text(64,80, "Current Health: " + string(_currentPlayerHealth));
draw_text(64,96, "Damage: " + string(_playerDamage));

	if(global.currentPlayerHealth = 0) {
		draw_text(672, 672, "GAME OVER");
		draw_text(660, 690, "Press R to restart");
		if keyboard_check_pressed(ord("R")) {
			room_restart();
		}
	}

