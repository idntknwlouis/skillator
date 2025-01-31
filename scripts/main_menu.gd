extends Node

var load_path = "res://assets/player_data.save"
@onready var title = $HBoxContainer/PlayerName
@onready var button1 = $CanvasLayer/VBoxContainer/play
var played = 0

func _ready():
	title.text = Global.player_name
func _process(delta: float) -> void:
	if played > 0:
		print("Loaded player name:", Global.player_name)

func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/subject_select.tscn")
	played += 1
	print(played)

func _on_settings_pressed() -> void:
	pass

func _on_quit_pressed() -> void:
	get_tree().quit()

func load_data(new_text: String):
	if FileAccess.file_exists(load_path):
		var file = FileAccess.open(load_path, FileAccess.WRITE)
		file.load_string(new_text)
		file.close()
		print("Player name saved:", new_text)
		$Title.text = new_text
