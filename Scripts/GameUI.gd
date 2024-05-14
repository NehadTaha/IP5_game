extends CanvasLayer

var progress_bar: TextureProgressBar
@export var time_left: float = 10
@export var max_time: float = 10
var totalFruit: int = 10
var collectedFruit: int
@export var endGoal: StaticBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	progress_bar = $SliderContainer/HBoxContainer/TextureProgressBar
	progress_bar.max_value = max_time  # Ensure the max value is set correctly
	progress_bar.value = max_time  # Initialize the progress bar value
	$Timer.wait_time = 1.0  # Set the timer to trigger every second
	$Timer.start()
	print(max_time)
	print(time_left)
	reset_fruit()


# Update the progress bar value
func update_progress_bar():
	progress_bar.value = time_left  # Directly set the value to the time left
	print("Progress Bar Value: ", progress_bar.value)

# Called every second by the Timer
func _on_timer_timeout():
	if time_left > 0:
		time_left -= 1
		update_progress_bar()
	if time_left <= 0:
		time_left = 0
		$Timer.stop()
		print("Timer ran out!")
		end_scene()
	print("Time Left: ", time_left)

# Function to add time when a collectible is collected
func add_time(amount: float):
	time_left += amount
	if time_left > max_time:
		time_left = max_time
	update_progress_bar()
	collectedFruit += 1
	$MarginContainer/HBoxContainer/fruit.text = str(collectedFruit)
	check_goal()

func reset_fruit():
	collectedFruit = 0
	totalFruit = 10

func check_goal():
	if collectedFruit >= totalFruit:
		endGoal.visible = true
		print("Level Complete")

func end_scene():
		get_tree().change_scene_to_file("res://end_menu.tscn")

