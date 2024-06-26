extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
const MAX_JUMPS = 2
var current_jumps = 0 

@onready var animated_sprite_2d = $AnimatedSprite2D

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	if (velocity.x > 1 || velocity.x  <-1):
		animated_sprite_2d.play("Running")
		$AudioStreamPlayer2D.play()
	else:
		animated_sprite_2d.play("default")
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
		animated_sprite_2d.play("Jumping")

	# Handle Jump.
	if Input.is_action_just_pressed("ui_accept") and (is_on_floor() or current_jumps < MAX_JUMPS):
		if is_on_floor():
			current_jumps = 0  # Reset jumps if on the floor
		velocity.y = JUMP_VELOCITY
		current_jumps += 1
		
		

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
		
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	
	var isLeft= velocity.x < 0
	animated_sprite_2d.flip_h = isLeft
	
	
	
