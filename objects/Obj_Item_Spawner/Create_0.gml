/// @description Decide what enemy to place
// You can write your code in this editor

//create event declaring weights.  0 - 3 could be your rarity values
weight[0] = 120;  //common
weight[1] = 30;  //uncommon
weight[2] = 15;  //rare
weight[3] = 5;   //epic
weight_total = 0;
for (var i = 0; i < array_length(weight); ++i) {
    weight_total += weight[i];
}

//get a random integer from 1 to the weight total, ensuring we don't include 0. Using ints, but  can use reals
var _num = irandom_range(1, weight_total);
var _sum = 0;
var _size = array_length(weight);
//loop through all the weights and see if num falls in that weight range
for (var i = 0; i < _size; ++i) {
	//increment the weight sum
	_sum += weight[i];
	//if num is less than the sum, we are in that range, so choose this i
	if _num <= _sum {
		//i has been selected, so process the rarity
		show_debug_message("The value is " + string(weight[i]) + " for " + string(_num) + " out of " + string(weight_total));
		switch(i) {
			case 0:		//common
				// nothing
			break;
			case 1:		//uncommon
				instance_create_layer(x, y, "Items", Obj_Health);
			break;
			case 2:		//rare
				instance_create_layer(x, y, "Items", Obj_Item_Damage_Up);
			break;
			case 3:		//epic
				instance_create_layer(x, y, "Items", Obj_HealthUp);
			break;
		}
		
		//exit loop
		break;
	}
}
instance_destroy();