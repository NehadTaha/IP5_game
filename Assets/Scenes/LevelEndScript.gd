extends CollisionShape2D

var end_particle = null
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_CollisionShape2D_body_entered(body):
	emit_signal("collision_occurred",body)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



