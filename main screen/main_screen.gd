extends Node2D

@onready var quote = $"quote"

func _on_new_quote_button_pressed() -> void:
	var numb = randi_range(1,10)
	new_quote(numb)

func new_quote(numb):
	if numb == 1:
		quote.text = "the little progress you have made today still matters"
	elif numb == 2:
		quote.text = "dont wish for it.\nwork for it"
	elif numb == 3:
		quote.text = "studying doesnt suck as much as failing"
	elif numb == 4:
		quote.text = "study until you cant get it wrong"
	elif numb == 5:
		quote.text = "make yourself proud"
	elif numb == 6:
		quote.text = "i CAN and i WILL"
	elif numb == 7:
		quote.text = "do what your future self will be proud of"
	elif numb == 8:
		quote.text = "studying is a privledge"
	elif numb == 9:
		quote.text = "youve got this!"
	elif numb == 10:
		quote.text = "dream big\nstudy hard"
