extends Node2D
class_name GameManager
# refs
@export var bugs : Array[Area2D] = []
# score system
var score : int = 0
var score_counted : bool = false
var bugs_left : int = 0
# ui
@onready var score_label : Label = $ui/score_label/score_label
@onready var bugs_left_label : Label = $ui/score_label/bugs_left_label
# checks
var near_bug : bool = false
# 
var parasite_timer : Timer = Timer.new()


func _ready() -> void:
	pass


func _process(delta: float) -> void:
	score_controller()
	bug_controller()

	
func _on_parasite_timer_timeout() -> void:
	score -= 3
	
	
func bug_controller():
	bugs_left_label.text = str(bugs_left) + "/" + str(bugs.size())
	
	
func score_controller():
	# game over
	if score < -25:
		get_tree().change_scene_to_file("res://scenes/menus/game_over.tscn")
	# game win
	if bugs_left == bugs.size():
		get_tree().change_scene_to_file("res://scenes/menus/you_win.tscn")
	# display score
	score_label.text = str(score)
	
	
