extends Control



func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/managers/game_manager.tscn")
