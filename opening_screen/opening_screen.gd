extends Node2D



func _ready() -> void:
	pass 



func _process(delta: float) -> void:
	pass



func _on_play_button_pressed() -> void: # changes the scene to the main screen when play button pressed
	TransitionScene.transition()
	await TransitionScene.on_transition_finished
	get_tree().change_scene_to_file("res://main screen/main_screen.tscn")

func _on_quit_button_pressed() -> void: # quits the game when the quit button is pressed
	get_tree().quit()
