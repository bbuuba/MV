extends Area2D




func _on_pat_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.pressed):
		var dialog= Dialogic.start("pat")
		add_child(dialog)
