extends CharacterBody2D

var direction = Vector2(1, -0.5)
@export var max_speed: int = 200

func _physics_process(delta: float) -> void:
	var speed = max_speed
	if Input.is_action_pressed("up"):
		direction = Vector2(1, -0.5)
	elif Input.is_action_pressed("down"):
		direction = Vector2(-1, 0.5)
	elif Input.is_action_pressed("left"):
		direction = Vector2(-1, -0.5)
	elif Input.is_action_pressed("right"):
		direction = Vector2(1, 0.5)
	else:
		speed = 0
	
	global_position += direction * speed * delta
	#velocity = direction * speed
	#move_and_slide()
