extends Area2D
class_name Bug
#
@export var game_manager : GameManager
#
var score_counted : bool = false

func _on_body_entered(body: Node2D) -> void:
	game_manager.near_bug = true

func _on_body_exited(body: Node2D) -> void:
	game_manager.near_bug = false
