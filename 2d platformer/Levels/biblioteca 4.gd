extends Area2D



func _on_biblioteca_4_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.pressed):
		var dialog= Dialogic.start("biblioteca4")
		add_child(dialog)
