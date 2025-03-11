extends Area2D
class_name Bug
# refs
@export var game_manager : GameManager
var player = Player.new()
# physics
# timer
@onready var bug_killed_timer: Timer = $bug_killed_timer
# animation
@onready var bug_animated_sprite: AnimatedSprite2D = $bug_animated_sprite


func _ready() -> void:
	pass
	

func _process(delta: float) -> void:
	pass
	
	
func _physics_process(delta: float) -> void:
	movement()
	
	
func movement():
	pass
	
	
func _on_body_entered(body: Node2D) -> void:
	# increase bugs found
	game_manager.bugs_left += 1
	# delete
	queue_free()
