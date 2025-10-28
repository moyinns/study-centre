extends Node2D

@onready var stopwatch_label = $"stopwatch label"
var time_elapsed: float = 0.0
var running: bool = false


func _ready() -> void:
	pass # Replace with function body.


func _process(delta: float) -> void:
	if running:
		time_elapsed += delta
		stopwatch_label.text = str(round(time_elapsed))

func _on_start_sw_button_pressed() -> void:
	running = true

func _on_stop_sw_button_pressed() -> void:
	running = false

func _on_reset_sw_button_pressed() -> void:
	time_elapsed = 0.0
	stopwatch_label.text = "0.00"
