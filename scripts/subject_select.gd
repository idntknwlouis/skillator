extends Node


func _on_ready():
	pass
	
func _process(float) -> void:
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()

func _on_anim_1_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/anim_1_desc.tscn")
	
func _on_anim_2_pressed() -> void:
	pass

func _on_previous_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
