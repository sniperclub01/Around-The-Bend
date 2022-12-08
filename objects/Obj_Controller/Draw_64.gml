/// @description Insert description here

if (instance_exists(Obj_Player)) {
	var _playerDamage = global.playerDamage;
	var _currentPlayerHealth = global.currentPlayerHealth;
	var _maxPlayerHealth = global.maxPlayerHealth;
	var _playerFracHealth = frac(_currentPlayerHealth);
	_currentPlayerHealth -= _playerFracHealth

	draw_set_color(c_black);
	
	for (var i = 1; i <= _maxPlayerHealth; i++) {
		var _imageIndex = (i > _currentPlayerHealth);
		if (i == _currentPlayerHealth+1) {
			_imageIndex += (_playerFracHealth > 0);
			//_imageIndex += (_playerFracHealth > .25);
			_imageIndex += (_playerFracHealth > .5);
		}
		draw_sprite(Spr_PlayerHealth, _imageIndex, -64 + (i*128), 64);
	}
	for (var i = 1; i <= _playerDamage; i++) {
		draw_sprite(Spr_PlayerDamage, 0, -64 + (i * 128), 192);
	}
}
