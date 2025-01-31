extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	
# Q1
func _on_q_1_answer_1_pressed() -> void:
	get_node("Correct").correct_answer1()

func _on_q_1_answer_2_pressed() -> void:
	$q1answer2.text = "Nope!"

# Q2
func _on_q_2_answer_1_pressed() -> void:
	$q2answer1.text = "Nope!"

func _on_q_2_answer_2_pressed() -> void:
	get_node("Correct").correct_answer2()


# Q3
func _on_q_3_answer_1_pressed() -> void:
	$q3answer1.text = "Nope!"

func _on_q_3_answer_2_pressed() -> void:
	get_node("Correct").correct_answer3()
