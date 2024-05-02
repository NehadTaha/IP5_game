extends Node

var healthFoodCount: int = 0;
var maxHealthFoodCount: int = 0;
var goalReached = false;

func reset_collection():
	healthFoodCount = 0;
	maxHealthFoodCount = 0;
	goalReached = false;

# Return an array with a numerator/denominator pair representing the bananas collected
func get_Collection_Progress():
	return [healthFoodCount, maxHealthFoodCount]
