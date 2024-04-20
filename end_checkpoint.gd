extends StaticBody2D

var particle_instance = null

# Called when the node enters the scene tree for the first time.
func _ready():
	$CollisionShape2D.connect("collision_occured",self,"_on_collision_occurred")
	

# Function to play the particle effect
func play_effect():
	# Check if the particle system instance already exists
	if particle_instance == null:
		# Get the ParticleSystem2D node from the StaticBody2D scene
		particle_instance = $ParticleSystem2D
		# Connect to the particle system's finished signal to stop emitting particles when it's done
		particle_instance.connect("particle_finished", self, "_on_particle_finished")
	
	# Start emitting particles
	particle_instance.emitting = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
