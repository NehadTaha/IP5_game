extends Control
func _ready():
	$AudioStreamPlayer.play()

func _on_retry_menu_button_up():
	get_tree().change_scene_to_file("res://Assets/Scenes/Level 1.tscn")
	


func _on_retry_menu_button_down():
		$VBoxContainer/ClickedButton.play()

func _on_main_menu_button_button_up():
	get_tree().change_scene_to_file("res://Scenes/main_screen.tscn")
	

func _on_main_menu_button_button_down():
	$VBoxContainer/ClickedButton.play()

func _on_quit_button_button_up():
	get_tree().quit()


func _on_quit_button_button_down():
	$VBoxContainer/ClickedButton.play()
