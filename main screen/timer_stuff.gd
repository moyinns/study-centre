extends Node2D

@onready var work_timer = $"work timer"
@onready var break_timer = $"break timer"
@onready var timer_label = $"timer label"
@onready var timer_title = $"timer title"
@onready var start_timer_button = $"start timer button"
@onready var stop_timer_button = $"stop timer button"

var total_seconds = 25 * 60

func _ready() -> void:
	timer_title.text = "work timer"
	timer_label.text = _format_time(total_seconds)
	start_timer_button.pressed.connect(_on_start_timer_button_pressed)
	work_timer.timeout.connect(_on_timer_timeout)

func _process(delta: float) -> void:
	pass

func _on_start_timer_button_pressed() -> void:
	work_timer.start()
	
func _on_stop_timer_button_pressed() -> void:
	work_timer.stop()
	
func _on_timer_timeout():
	if total_seconds > 0:
		total_seconds -= 1
		timer_label.text = _format_time(total_seconds)
	else:
		work_timer.stop()
		timer_label.text = "times up!"

func _format_time(seconds: int) -> String:
	var minutes = seconds / 60
	var secs = seconds % 60
	return "%02d:%02d" % [minutes, secs]
	


func _on_switch_button_pressed() -> void:
	pass # Replace with function body.
