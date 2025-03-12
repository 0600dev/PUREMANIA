extends CharacterBody2D
class_name Player
# refs
@export var game_manager : GameManager
# physics
var SPEED : int = 500
var pos = self.position

func _physics_process(delta: float) -> void:
	movement()
	move_and_slide()
	

func movement():
	var input = Input.get_vector("left", "right", "up", "down")
	if input:
		velocity = input * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, 20)
		velocity.y = move_toward(velocity.y, 0, 20)
	# increase speed
	if game_manager.bugs_left == game_manager.bugs.size()/2:
		SPEED = 700
	
