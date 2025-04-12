extends CharacterBody2D

var direction: Vector2
var previous_direction: String
var current_direction: String
@export var speed: int = 200

const UP = "up"
const DOWN = "down"
const LEFT = "left"
const RIGHT = "right"

func _physics_process(delta: float) -> void:
	global_position += move() * delta


func move() -> Vector2:
	direction = Vector2.ZERO
	if Input.is_action_just_pressed(UP):
		previous_direction = current_direction
		current_direction = UP
	if Input.is_action_just_pressed(DOWN):
		previous_direction = current_direction
		current_direction = DOWN
	if Input.is_action_just_pressed(LEFT):
		previous_direction = current_direction
		current_direction = LEFT
	if Input.is_action_just_pressed(RIGHT):
		previous_direction = current_direction
		current_direction = RIGHT

	if (Input.is_action_just_released(UP) and current_direction == UP) \
		or (Input.is_action_just_released(DOWN) and current_direction == DOWN) \
		or (Input.is_action_just_released(LEFT) and current_direction == LEFT) \
		or (Input.is_action_just_released(RIGHT) and current_direction == RIGHT):
		current_direction = previous_direction

	if Input.is_action_pressed(UP) and current_direction == UP:
		direction = Vector2(1, -0.5)
	if Input.is_action_pressed(DOWN) and current_direction == DOWN:
		direction = Vector2(-1, 0.5)
	if Input.is_action_pressed(LEFT) and current_direction == LEFT:
		direction = Vector2(-1, -0.5)
	if Input.is_action_pressed(RIGHT) and current_direction == RIGHT:
		direction = Vector2(1, 0.5)
	return direction * speed
