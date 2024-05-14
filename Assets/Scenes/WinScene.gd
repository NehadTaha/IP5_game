extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_next_level_button_pressed():
	global.increaseLevel()
	loadLevel()


func _on_redo_level_pressed():
	loadLevel()


func _on_menu_button_pressed():
	global.resetLevel()
	get_tree().change_scene_to_file("res://Scenes/main_screen.tscn")


func loadLevel():
	var levelIndex = global.getCurrentLevel()
	var levelName = "Level " + str(levelIndex) + ".tscn"
	if ResourceLoader.exists(levelName):
		get_tree().change_scene_to_file("res://Scenes/" + levelName)
	else:
		print("Level not found: ", levelName)
