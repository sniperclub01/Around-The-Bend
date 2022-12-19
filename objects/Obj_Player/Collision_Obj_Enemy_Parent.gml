/// @description Insert description here
// You can write your code in this editor

var _knockback = global.knockBackTime;

damage_entity(other, Obj_Player, 0, _knockback);

if (playerFloor == 1) {
	if (invincible = false) {
		global.currentPlayerHealth -= 0.5;
	}
}

if (playerFloor > 1) {
	if (invincible = false) {
		global.currentPlayerHealth -= 1;
	}
}

invincible = true;
alarm_set(1, 10);
