extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.hide()

func correct_answer1():
	self.show()
	$continue2.hide()
	$continue3.hide()

	
func correct_answer2():
	self.show()
	$continue.hide()
	$continue3.hide()

	
func correct_answer3():
	self.show()
	$continue.hide()
	$continue2.hide()



func _on_continue_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/questions/q2.tscn")


func _on_continue_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/questions/q3.tscn")


func _on_continue_3_pressed() -> void:
	pass # Replace with function body.
