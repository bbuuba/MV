extends Area2D



func _on_birou_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.pressed):
		var dialog= Dialogic.start("birou")
		add_child(dialog)
