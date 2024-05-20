extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$MenuMusic.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass


func _on_play_button_button_up():
	get_tree().change_scene_to_file("res://Scenes/cutScene.tscn");

func _on_button_up():
	
	get_tree().quit()

func _on_quit_button_button_down():
	$ClickedButton.play()


func _on_play_button_button_down():
	$ClickedButton.play()
