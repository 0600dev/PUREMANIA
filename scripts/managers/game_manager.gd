extends Node2D
class_name GameManager
# refs
# bugs as a whole
@export var bugs : Array[Area2D] = []

# score system
var score : int = 0
var score_counted : bool = false
var bugs_left : int = 0
# ui
@onready var health_bar: TextureProgressBar = $ui/health_bar/health_bar
@onready var bugs_left_label: Label = $ui/bugs_left/bugs_left_label
# checks

# timers
var parasite_timer : Timer = Timer.new()


func _ready() -> void:
	# random bug location
	pass


func _process(delta: float) -> void:
	score_controller()
	bug_controller()

	
func _on_parasite_timer_timeout() -> void:
	health_bar.value -= 5
	
	
func bug_controller():
	bugs_left_label.text = str(bugs_left) + "/" + str(bugs.size())
	
	
func score_controller():
	# game over
	if health_bar.value == 0:
		get_tree().change_scene_to_file("res://scenes/menus/game_over.tscn")
	# game win
	if bugs_left == bugs.size():
		get_tree().change_scene_to_file("res://scenes/menus/you_win.tscn")
	
	
	
