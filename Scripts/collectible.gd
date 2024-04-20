extends Area2D

@onready var animator: AnimationPlayer = $AnimationPlayer
@onready var collectSound: AudioStreamPlayer2D = $AudioStreamPlayer2D
var collected = false;

func _ready():
	#Global.maxHealthFoodCount += 1;
	animator.play("idle");


func _on_body_entered(body):
	if(!collected):
		collected = true;
		#Global.healthFoodCount += 1;
		collectSound.play()
		animator.play("collected")
	pass # Replace with function body.
