extends CanvasLayer

signal on_transition_finished
@onready var brown_screen = $"brown screen"
@onready var animation = $"animation"

func _ready() -> void:
	brown_screen.visible = false
	animation.animation_finished.connect(_on_animation_finished)

func _on_animation_finished(animation_name):
	if animation_name == "fade_to_black":
		on_transition_finished.emit()
		animation.play("fade_to_normal")
	elif animation_name == "fade_to_normal":
		brown_screen.visible = false

func transition():
	brown_screen.visible = true
	animation.play("fade_to_black")
	
