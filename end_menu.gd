extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_up():
	pass # Replace with function body.


func _on_retry_menu_button_up():
	get_tree().change_scene_to_file("res://Assets/Scenes/Level 1.tscn")
	


func _on_retry_menu_button_down():
	$ClickedButton.play()


func _on_main_menu_button_button_up():
	get_tree().change_scene_to_file("res://Scenes/main_screen.tscn")
	

func _on_main_menu_button_button_down():
	$ClickedButton.play()


func _on_quit_button_button_up():
	get_tree().quit()


func _on_quit_button_button_down():
	$ClickedButton.play()

