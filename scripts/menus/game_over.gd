extends Control


func _on_game_over_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menus/start_menu.tscn")
