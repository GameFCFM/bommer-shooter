extends Control


func _ready() -> void:
	hide()
	EventBus.player_died.connect(_on_player_died)
	
func _on_restart_pressed() -> void:
	get_tree().reload_current_scene()
	

func _on_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/main_menu.tscn")

func _on_player_died() -> void:
	show()
