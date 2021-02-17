extends Control

var aufgetankteSchiffe = 0
var actionText = ""
var actionText2 = ""
var actionText3 = ""
var actionText4 = ""
var actionText5 = ""
var actionText6 = ""

# Called when the node enters the scene tree for the first time.
func _ready():
	$HBoxContainer/VBoxContainer/Label.text = "Du hast noch kein intergalaktisches Raumschiff aufgetankt"
	$ActionText.text = actionText
	$ActionText2.text = actionText2
	$ActionText3.text = actionText3
	$ActionText4.text = actionText4
	$ActionText5.text = actionText5
	$ActionText6.text = actionText6
	

func _on_Button_pressed():
	aufgetankteSchiffe += 1
	
	if aufgetankteSchiffe%25 == 0:
		actionText = "wow"
	else:
		actionText = ""
	
	if aufgetankteSchiffe%15 == 0:
		actionText2 = "yeah"
	else:
		actionText2 = ""
		
	if aufgetankteSchiffe%10 == 0:
		actionText3 = "cool"
	else:
		actionText3 = ""
		
	if aufgetankteSchiffe%7 == 0:
		actionText4 = "geil"
	else:
		actionText4 = ""
	
	if aufgetankteSchiffe%33 == 0:
		actionText5 = "nice"
	else:
		actionText5 = ""
		
	if aufgetankteSchiffe%64 == 0:
		actionText6 = "fett"
	else:
		actionText6 = ""
	
	
	$HBoxContainer/VBoxContainer/Label.text = "Geil, du hast " + str(aufgetankteSchiffe) + " intergalaktische Schiffe aufgetankt!!!"
	$ActionText.text = actionText
	$ActionText2.text = actionText2
	$ActionText3.text = actionText3
	$ActionText4.text = actionText4
	$ActionText5.text = actionText5
	$ActionText6.text = actionText6
