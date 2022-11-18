/// @description Insert description here
// You can write your code in this editor

hp_max = 9;
hp = hp_max;
move_spd = 2;

hsp = 0;
vsp = 0;

// are we chasing the player?
alert = false;
// how far before we get alerted
alert_dis = 320;
// how far the enemy can attack the player
attack_dis = -1;
// create path resource
path = path_add();

// delay for path calculations (eases up cpu use)
calc_path_delay = 45;

calc_path_timer = irandom(60);
