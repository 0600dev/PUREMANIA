extends Area2D
class_name Bug
# refs
@export var game_manager : GameManager
# physics
var new_pos = Vector2(randf_range(-1500, 1500), randf_range(-1500, 1500))


func _ready() -> void:
	# position randomizer
	global_position = new_pos
	

func _process(delta: float) -> void:
	pass
	
	
func _physics_process(delta: float) -> void:
	pass
	
	
func _on_body_entered(body: Node2D) -> void:
	# up bugs found
	game_manager.bugs_left += 1
	# up score
	game_manager.score += 10
	queue_free()
