extends Node

var save_path = "res://assets/player_data.save"
@onready var playername = $LineEdit

func _ready():
	var line_edit = get_node("LineEdit")
	
	if not line_edit:
		print("WARNING: Could not find LineEdit node. Check path or name.")
		return  # Exit duh
	
	line_edit.connect("text_changed", self._on_line_edit_text_changed.bind(self))
	line_edit.connect("text_submitted", self._on_line_edit_text_submitted.bind(self))

func _on_line_edit_text_changed(new_text: String) -> void:
	print("New text:", new_text)
	
func _process(delta: float) -> void:
	pass

func _on_line_edit_text_submitted(new_text: String) -> void:
	Global.player_name = new_text
	save(new_text)

func _on_enter_pressed() -> void:
	var current_text = playername.text
	Global.player_name = current_text
	save(current_text)
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")

func save(new_text: String):
	var file = FileAccess.open(save_path, FileAccess.WRITE)
	file.store_string(new_text)
	file.close()
	print("Player name saved: ", new_text)
