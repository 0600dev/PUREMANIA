extends Control


func _on_you_win_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menus/start_menu.tscn")
