extends Control




# Called when the node enters the scene tree for the first time.
func _ready():
	VisualServer.set_default_clear_color(Color.black)
	
	$VBoxContainer/StartButton.grab_focus()
func _on_StartButton_pressed():
	get_tree().change_scene("res://Levels/Cameraluimatei.tscn")


