extends Area2D



func _on_stiri_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.pressed):
		var dialog= Dialogic.start("stiri")
		add_child(dialog)
