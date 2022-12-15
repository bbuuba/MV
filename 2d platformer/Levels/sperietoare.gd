extends Area2D




func _on_sperietoare_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.pressed):
		var dialog= Dialogic.start("sperietoare")
		add_child(dialog)
