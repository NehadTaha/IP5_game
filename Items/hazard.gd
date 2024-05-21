extends Area2D

signal time_removed_signal

@onready var animator: AnimationPlayer = $AnimationPlayer
@onready var collectSound: AudioStreamPlayer2D = $AudioStreamPlayer2D
var collected = false

func _ready():
	animator.play("idle")

func _on_body_entered(body):
	if not collected:
		collected = true
		collectSound.play()
		animator.play("collected")
		emit_signal("time_removed_signal", 3) # Emit signal with the positive amount of time to remove
		print("Removed 3 seconds")
