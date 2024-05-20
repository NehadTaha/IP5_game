extends Area2D

signal collected_signal

@onready var animator: AnimationPlayer = $AnimationPlayer
@onready var collectSound: AudioStreamPlayer2D = $AudioStreamPlayer2D
var collected = false;

func _ready():
	global.maxHealthFoodCount += 1;
	animator.play("idle");

func _on_body_entered(body):
	if(!collected):
		collected = true;
		global.healthFoodCount += 1;
		collectSound.play()
		animator.play("collected")
		emit_signal("collected_signal", 3) # Emit signal with the amount of time to add
		print("Added 3 seconds")
		print(global.healthFoodCount)
		print(global.maxHealthFoodCount)
