extends Area2D



func _on_peste_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.pressed):
		var dialog= Dialogic.start("peste")
		add_child(dialog)
