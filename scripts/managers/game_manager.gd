extends Node2D
class_name GameManager
# refs
var bug = Bug.new()
# score system
var score : int = 0
# checks
var near_bug : bool = false

func _ready() -> void:
	pass


func _process(delta: float) -> void:
	if Input.is_action_just_pressed("interact") and near_bug:
		score += 1
		print(score)
		bug.score_counted = true
