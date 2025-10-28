extends Node2D

@onready var todo_list = $"todo list"
@onready var add_task = $"add task"
var todo_item_scene = preload("res://main screen/todo_item.tscn")

func _ready():
	add_task.pressed.connect(_on_add_task_pressed)

func _on_add_task_pressed():
	# instantiate the template
	var new_item = todo_item_scene.instantiate()
	
	# add it as a child of TodoList (VBoxContainer)
	todo_list.add_child(new_item)
	
	# optional: set anchors so it stretches properly
	new_item.anchor_left = 0
	new_item.anchor_right = 1

func _process(delta: float) -> void:
	pass
