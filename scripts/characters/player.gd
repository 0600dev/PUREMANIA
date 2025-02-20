extends CharacterBody2D
class_name Player

const SPEED = 300.0


func _physics_process(delta: float) -> void:
	movement()
	move_and_slide()
	

func movement():
	var input = Input.get_vector("left", "right", "up", "down")
	if input:
		velocity = input * SPEED
	else:
		velocity = Vector2.ZERO
	
