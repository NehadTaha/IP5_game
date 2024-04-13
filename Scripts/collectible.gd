extends Area2D

@onready var animator: AnimationPlayer = $AnimationPlayer
@onready var collectSound: AudioStreamPlayer3D = $AudioStreamPlayer3D
var collected = false;

func _ready():
	Global.maxHealthFoodCount += 1;
