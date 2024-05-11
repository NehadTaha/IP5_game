extends GPUParticles2D

var isPlaying = false

func _on_area_2d_body_entered(body):
	print("nice")
	if(!isPlaying):
		set_emitting(true)
		isPlaying = true
		print(isPlaying)


func _on_finished():
	isPlaying = false
	print(isPlaying)
