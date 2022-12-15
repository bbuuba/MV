extends Area2D



func _on_sperietoare2_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.pressed):
		var dialog= Dialogic.start("sperietoare2")
		add_child(dialog)
