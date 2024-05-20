extends GPUParticles2D

var isPlaying = false

func _on_area_2d_body_entered(body):
	if(!isPlaying):#&& global.healthFoodCount >= global.maxHealthFoodCount
		set_emitting(true)
		isPlaying = true
		$AnimationPlayer.play("win_wait_time")
		print(isPlaying)


func _on_finished():
	isPlaying = false
	print(isPlaying)


func _on_animation_player_animation_finished(anim_name):
	global.currentLevel = global.currentLevel + 1
	get_tree().change_scene_to_packed(global.levelPaths[global.currentLevel])
