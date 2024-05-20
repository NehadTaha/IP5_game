extends Node

var healthFoodCount: int = 0;
var maxHealthFoodCount: int = 0;
var goalReached = false;
var currentLevel: int = 0
var levelPaths = [preload("res://Assets/Scenes/Level 1.tscn"),preload("res://Assets/Scenes/Level 2.tscn"),preload("res://Assets/Scenes/Level 3.tscn")]

func reset_collection():
	healthFoodCount = 0;
	maxHealthFoodCount = 0;
	goalReached = false;


# Return an array with a numerator/denominator pair representing the bananas collected
func get_Collection_Progress():
	return [healthFoodCount, maxHealthFoodCount]

